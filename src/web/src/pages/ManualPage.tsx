import { Download, Smartphone, Settings, Terminal, Router, BookMarked, ExternalLink, Mail, AlertCircle } from 'lucide-react'
import avatarUrl from '@/assets/GarnetRapture_Costume01_512.png'
import { GlassCard } from '@/components/ui/GlassCard'
import { SectionCard } from '@/components/manual/SectionCard'
import { StepList } from '@/components/manual/StepList'
import { RouterCard } from '@/components/manual/RouterCard'
import { CommandRow } from '@/components/manual/CommandRow'
import { useI18n } from '@/lib/i18n'
import { MANUAL_CONTENT } from '@/data/manual'

export function ManualPage() {
  const { lang } = useI18n()
  const c = MANUAL_CONTENT[lang]

  return (
    <div className="space-y-6">
      <div className="flex items-center gap-3">
        <BookMarked className="w-5 h-5 text-orange-500" />
        <h2 className="text-lg sm:text-xl font-bold text-slate-900 dark:text-white">Manual</h2>
        <span className="px-2.5 py-0.5 rounded-full bg-orange-100 dark:bg-orange-900/40 text-orange-700 dark:text-orange-300 text-xs font-semibold">
          {c.versionLabel}
        </span>
      </div>

      <GlassCard>
        <p className="text-sm text-slate-600 dark:text-slate-300 leading-relaxed">{c.releaseNote}</p>
      </GlassCard>

      <SectionCard
        icon={<Download className="w-4 h-4 text-sky-600" />}
        iconBg="bg-sky-100 dark:bg-sky-900/40"
        title={c.sectionDownload}
      >
        <a
          href={c.downloadApkUrl}
          target="_blank"
          rel="noreferrer"
          className="flex items-center gap-2 px-4 py-3 rounded-xl border border-sky-200 dark:border-sky-700/40 bg-sky-50 dark:bg-sky-900/20 hover:bg-sky-100 dark:hover:bg-sky-900/40 transition-colors"
        >
          <ExternalLink className="w-4 h-4 text-sky-600 dark:text-sky-400 shrink-0" />
          <span className="text-sm font-medium text-sky-700 dark:text-sky-300">{c.downloadApkLabel}</span>
        </a>
        <a
          href={c.downloadMumuUrl}
          target="_blank"
          rel="noreferrer"
          className="flex items-center gap-2 px-4 py-3 rounded-xl border border-violet-200 dark:border-violet-700/40 bg-violet-50 dark:bg-violet-900/20 hover:bg-violet-100 dark:hover:bg-violet-900/40 transition-colors"
        >
          <ExternalLink className="w-4 h-4 text-violet-600 dark:text-violet-400 shrink-0" />
          <span className="text-sm font-medium text-violet-700 dark:text-violet-300">{c.downloadMumuLabel}</span>
        </a>
      </SectionCard>

      <SectionCard
        icon={<Settings className="w-4 h-4 text-indigo-600" />}
        iconBg="bg-indigo-100 dark:bg-indigo-900/40"
        title={c.sectionSetup}
      >
        <StepList steps={c.setupSteps} />
      </SectionCard>

      <SectionCard
        icon={<Smartphone className="w-4 h-4 text-lime-600" />}
        iconBg="bg-lime-100 dark:bg-lime-900/40"
        title={c.sectionMumuSettings}
      >
        <p className="text-sm text-amber-700 dark:text-amber-400 bg-amber-50 dark:bg-amber-900/20 border border-amber-200 dark:border-amber-700/40 rounded-xl px-3 py-2 leading-snug">
          {c.mumuSettingsNote}
        </p>
        <StepList steps={c.mumuSteps} />
      </SectionCard>

      <SectionCard
        icon={<Terminal className="w-4 h-4 text-emerald-600" />}
        iconBg="bg-emerald-100 dark:bg-emerald-900/40"
        title={c.sectionAdbSetup}
      >
        <p className="text-sm text-rose-700 dark:text-rose-400 bg-rose-50 dark:bg-rose-900/20 border border-rose-200 dark:border-rose-700/40 rounded-xl px-3 py-2 leading-snug">
          {c.adbNote}
        </p>
        <div className="rounded-xl border border-emerald-200 dark:border-emerald-700/40 bg-emerald-50 dark:bg-emerald-900/20 px-4 py-3 space-y-1">
          <code className="block text-sm font-mono text-emerald-700 dark:text-emerald-300 font-bold">
            {c.adbReverseCmd}
          </code>
          <p className="text-xs text-slate-500 dark:text-slate-400 leading-snug">{c.adbReverseCmdDesc}</p>
        </div>
      </SectionCard>

      <SectionCard
        icon={<Router className="w-4 h-4 text-orange-600" />}
        iconBg="bg-orange-100 dark:bg-orange-900/40"
        title={c.sectionRouter}
      >
        <p className="text-sm text-slate-600 dark:text-slate-300 leading-snug">{c.routerNote}</p>
        <p className="text-xs text-slate-500 dark:text-slate-400 bg-slate-100 dark:bg-white/5 rounded-xl px-3 py-2 leading-snug">
          {c.routerPortInfo}
        </p>
        {c.routers.map((r) => (
          <RouterCard key={r.name} entry={r} />
        ))}
      </SectionCard>

      <SectionCard
        icon={<Terminal className="w-4 h-4 text-cyan-600" />}
        iconBg="bg-cyan-100 dark:bg-cyan-900/40"
        title={c.sectionAdbCommands}
      >
        {c.adbCommands.map((cmd) => (
          <CommandRow key={cmd.cmd} item={cmd} />
        ))}
      </SectionCard>

      <GlassCard>
        <div className="flex items-center gap-4">
          <div className="relative shrink-0">
            <img
              src={avatarUrl}
              alt="Nekoi"
              className="w-20 h-20 rounded-2xl object-cover ring-2 ring-violet-400/40 shadow-xl shadow-violet-500/20"
            />
            <span className="absolute -bottom-1 -right-1 w-3 h-3 rounded-full bg-emerald-400 ring-2 ring-white dark:ring-slate-900" />
          </div>
          <div className="flex-1 min-w-0">
            <div className="flex items-baseline gap-2 flex-wrap">
              <span className="text-base font-bold text-slate-900 dark:text-white tracking-tight">Nekoi</span>
              <span className="text-[11px] text-slate-400 dark:text-slate-500 font-mono">Web UI Developer</span>
            </div>
            <div className="mt-2.5 flex flex-col gap-1.5">
              <a
                href="https://github.com/GarnetRapture"
                target="_blank"
                rel="noreferrer"
                className="flex items-center gap-2 text-xs text-slate-600 dark:text-slate-300 hover:text-violet-600 dark:hover:text-violet-400 transition-colors group"
              >
                <ExternalLink className="w-3.5 h-3.5 shrink-0 text-slate-400 group-hover:text-violet-500 transition-colors" />
                <span className="font-mono">github.com/GarnetRapture</span>
              </a>
              <a
                href="mailto:nekoi@everlib.pro"
                className="flex items-center gap-2 text-xs text-slate-600 dark:text-slate-300 hover:text-sky-600 dark:hover:text-sky-400 transition-colors group"
              >
                <Mail className="w-3.5 h-3.5 shrink-0 text-slate-400 group-hover:text-sky-500 transition-colors" />
                <span className="font-mono">nekoi@everlib.pro</span>
              </a>
              <a
                href="https://github.com/PackageInstaller/EverSoulSimulator/issues"
                target="_blank"
                rel="noreferrer"
                className="flex items-center gap-2 text-xs text-slate-600 dark:text-slate-300 hover:text-rose-600 dark:hover:text-rose-400 transition-colors group"
              >
                <AlertCircle className="w-3.5 h-3.5 shrink-0 text-slate-400 group-hover:text-rose-500 transition-colors" />
                <span className="font-mono">이슈 보고 / Bug Report</span>
              </a>
            </div>
          </div>
        </div>
      </GlassCard>
    </div>
  )
}
