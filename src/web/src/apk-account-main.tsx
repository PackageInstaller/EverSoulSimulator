import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import './index.css'
import { ApkAccountApp } from './apps/apk-account/ApkAccountApp'

createRoot(document.getElementById('root')!).render(
  <StrictMode>
    <ApkAccountApp />
  </StrictMode>,
)
