import type { Plugin } from 'vite'
import path from 'node:path'
import fs from 'node:fs'
import type { IncomingMessage, ServerResponse } from 'node:http'

const REPOSITORY_ROOT = path.resolve(__dirname, '../..')
const JSON_DATA_ROOTS = new Set(['responses', 'responses_newbie', 'tbl_json'])

interface FileEntry {
  path: string
  bytes: number
}

function normalizeRelativePath(input: string): string {
  return input.replace(/\\/g, '/').replace(/^\/+/, '')
}

function resolveDataPath(relativePath: string): string | null {
  const normalized = normalizeRelativePath(relativePath)
  const firstSegment = normalized.split('/')[0]
  if (!JSON_DATA_ROOTS.has(firstSegment)) return null
  if (normalized.includes('\0')) return null
  if (normalized.split('/').some(part => part === '..')) return null

  const absolutePath = path.resolve(REPOSITORY_ROOT, normalized)
  const dataRoot = path.resolve(REPOSITORY_ROOT, firstSegment)
  if (absolutePath !== dataRoot && !absolutePath.startsWith(dataRoot + path.sep)) return null
  return absolutePath
}

function toRepositoryRelative(absolutePath: string): string {
  return path.relative(REPOSITORY_ROOT, absolutePath).replace(/\\/g, '/')
}

function readRequestBody(req: IncomingMessage): Promise<string> {
  return new Promise((resolve, reject) => {
    let data = ''
    req.on('data', chunk => {
      data += String(chunk)
    })
    req.on('end', () => resolve(data))
    req.on('error', reject)
  })
}

function sendJson(res: ServerResponse, status: number, body: unknown) {
  const text = JSON.stringify(body)
  res.writeHead(status, {
    'Content-Type': 'application/json;charset=UTF-8',
    'Content-Length': String(Buffer.byteLength(text, 'utf8')),
    'Access-Control-Allow-Origin': '*',
  })
  res.end(text)
}

function sendText(res: ServerResponse, status: number, body: string, contentType = 'text/plain; charset=UTF-8') {
  res.writeHead(status, {
    'Content-Type': contentType,
    'Content-Length': String(Buffer.byteLength(body, 'utf8')),
    'Access-Control-Allow-Origin': '*',
  })
  res.end(body)
}

function listDataFiles(prefix: string): FileEntry[] {
  const rootPath = resolveDataPath(prefix)
  if (!rootPath || !fs.existsSync(rootPath)) return []

  const result: FileEntry[] = []
  const pending = [rootPath]
  while (pending.length > 0) {
    const current = pending.pop()
    if (!current) continue
    for (const entry of fs.readdirSync(current, { withFileTypes: true })) {
      const child = path.join(current, entry.name)
      if (entry.isDirectory()) {
        pending.push(child)
      } else if (entry.isFile()) {
        result.push({
          path: toRepositoryRelative(child),
          bytes: fs.statSync(child).size,
        })
      }
    }
  }
  return result.sort((left, right) => left.path.localeCompare(right.path))
}

function handleFileList(res: ServerResponse, url: URL) {
  const prefix = url.searchParams.get('prefix') ?? ''
  sendJson(res, 200, listDataFiles(prefix))
}

async function handleFile(req: IncomingMessage, res: ServerResponse, url: URL) {
  const relativePath = url.searchParams.get('path') ?? ''
  const dataPath = resolveDataPath(relativePath)
  if (!dataPath) {
    sendJson(res, 400, { ok: false, reason: 'invalid path' })
    return
  }

  if (req.method === 'GET') {
    if (!fs.existsSync(dataPath) || !fs.statSync(dataPath).isFile()) {
      sendJson(res, 404, { ok: false, reason: 'not found' })
      return
    }
    sendText(res, 200, fs.readFileSync(dataPath, 'utf8'), 'application/json;charset=UTF-8')
    return
  }

  if (req.method === 'POST') {
    const body = await readRequestBody(req)
    fs.mkdirSync(path.dirname(dataPath), { recursive: true })
    fs.writeFileSync(dataPath, body, 'utf8')
    sendJson(res, 200, { ok: true })
    return
  }

  sendJson(res, 405, { ok: false, reason: 'method not allowed' })
}

function tblJsonFiles(): string[] {
  return listDataFiles('tbl_json')
    .map(row => row.path.replace(/^tbl_json\//, ''))
    .filter(name => name.endsWith('.json'))
}

async function handleTblJson(req: IncomingMessage, res: ServerResponse, url: URL) {
  if (url.pathname === '/web/api/tbl_json' && req.method === 'GET') {
    sendJson(res, 200, { files: tblJsonFiles() })
    return
  }

  const match = url.pathname.match(/^\/api\/tbl_json\/(.+)$/)
  if (!match) {
    sendJson(res, 404, { ok: false, reason: 'not found' })
    return
  }

  const name = decodeURIComponent(match[1])
  const fileName = name.endsWith('.json') ? name : `${name}.json`
  const dataPath = resolveDataPath(`tbl_json/${fileName}`)
  if (!dataPath) {
    sendJson(res, 400, { ok: false, reason: 'invalid name' })
    return
  }

  if (req.method === 'GET') {
    if (!fs.existsSync(dataPath)) {
      sendJson(res, 404, { ok: false, reason: 'not found' })
      return
    }
    sendText(res, 200, fs.readFileSync(dataPath, 'utf8'), 'application/json;charset=UTF-8')
    return
  }

  if (req.method === 'POST') {
    const body = await readRequestBody(req)
    JSON.parse(body)
    fs.writeFileSync(dataPath, body, 'utf8')
    sendJson(res, 200, { ok: true, changed: true })
    return
  }

  sendJson(res, 405, { ok: false, reason: 'method not allowed' })
}

function handleTblStatus(res: ServerResponse) {
  const jsonCount = tblJsonFiles().length
  sendJson(res, 200, {
    tbl_count: 0,
    json_count: jsonCount,
    fbs_count: 0,
    default_count: 0,
    default_json_count: jsonCount,
    flatc: false,
    complete: jsonCount > 0,
    missing_count: 0,
    missing: [],
  })
}

export function fixtureJsonDevPlugin(): Plugin {
  return {
    name: 'fixture-json-dev-plugin',
    configureServer(server) {
      server.middlewares.use(async (req, res, next) => {
        try {
          const url = new URL(req.url ?? '/', 'http://127.0.0.1')

          if (req.method === 'OPTIONS') {
            sendText(res, 204, '')
            return
          }

          if (url.pathname === '/web/api/files/list') {
            handleFileList(res, url)
            return
          }

          if (url.pathname === '/web/api/files') {
            await handleFile(req, res, url)
            return
          }

          if (url.pathname === '/web/api/tbl/status') {
            handleTblStatus(res)
            return
          }

          if (url.pathname === '/web/api/tbl_json' || url.pathname.startsWith('/api/tbl_json/')) {
            await handleTblJson(req, res, url)
            return
          }

          next()
        } catch (error) {
          const reason = error instanceof Error ? error.message : String(error)
          sendJson(res, 500, { ok: false, reason })
        }
      })
    },
  }
}
