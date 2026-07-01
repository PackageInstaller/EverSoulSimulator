import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import './index.css'
import { SetupApp } from './apps/setup/SetupApp'

createRoot(document.getElementById('root')!).render(
  <StrictMode>
    <SetupApp />
  </StrictMode>,
)
