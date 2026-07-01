import path from 'path'
import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'
import tailwindcss from '@tailwindcss/vite'
import { fixtureJsonDevPlugin } from './vite-plugin-fixture-json-dev'

export default defineConfig(({ command }) => ({
  base: '/web/',
  plugins: [
    react(),
    tailwindcss(),
    ...(command === 'serve' ? [fixtureJsonDevPlugin()] : []),
  ],
  resolve: {
    alias: {
      '@': path.resolve(__dirname, './src'),
    },
  },
  server: {
    proxy: {
      '/web/api': 'http://127.0.0.1:9991',
    },
  },
  build: {
    rollupOptions: {
      input: {
        main: path.resolve(__dirname, 'index.html'),
        'setup/index': path.resolve(__dirname, 'setup.html'),
        'apk-account/index': path.resolve(__dirname, 'apk-account.html'),
      },
    },
  },
}))
