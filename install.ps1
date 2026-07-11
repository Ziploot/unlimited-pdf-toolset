# [ZipLoot] Serverless PDF Toolset Installer
# ==============================================

Clear-Host
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "   ⚡ ZIPLOOT SERVERLESS PDF TOOLSET INSTALLER" -ForegroundColor Cyan
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "   100% Client-Side | Zero Server Caps | $0 Hosting" -ForegroundColor Green
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host

$ProjectFolder = "unlimited-pdf-toolset-project"

# Step 1: Clone/Prepare project locally if needed
if (Test-Path $ProjectFolder) {
    Write-Host "[WARN] Folder '$ProjectFolder' already exists." -ForegroundColor Yellow
} else {
    Write-Host "[INFO] Creating folder '$ProjectFolder'..." -ForegroundColor Blue
    New-Item -ItemType Directory -Path $ProjectFolder -Force | Out-Null
    
    # Download files from GitHub
    Write-Host "[INFO] Downloading project files from GitHub..." -ForegroundColor Blue
    $BaseUrl = "https://raw.githubusercontent.com/Ziploot/unlimited-pdf-toolset/main"
    
    Invoke-WebRequest -Uri "$BaseUrl/index.html" -OutFile "$ProjectFolder/index.html" -UserAgent "Mozilla/5.0"
    Invoke-WebRequest -Uri "$BaseUrl/package.json" -OutFile "$ProjectFolder/package.json" -UserAgent "Mozilla/5.0"
    Invoke-WebRequest -Uri "$BaseUrl/vercel.json" -OutFile "$ProjectFolder/vercel.json" -UserAgent "Mozilla/5.0"
}

Write-Host
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "⚡ OPTION 1: 1-Click Cloud Deployment (Vercel - Free Hosting)" -ForegroundColor Green
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "The easiest way! Deploy to Vercel in 10 seconds for $0:"
Write-Host "1. The script will open the Vercel 1-Click deploy page."
Write-Host "2. Connect your GitHub/Vercel account and click Deploy."
Write-Host

$choice1 = Read-Host "[INPUT] Do you want to open the 1-Click Vercel Deployment page now? (Y/N)"
if ($choice1 -eq 'y' -or $choice1 -eq 'Y') {
    Write-Host "[INFO] Opening deployment page in browser..." -ForegroundColor Green
    Start-Process "https://vercel.com/new/clone?repository-url=https://github.com/Ziploot/unlimited-pdf-toolset"
}

Write-Host
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "⚡ OPTION 2: Run Locally (Instant Browser Editor)" -ForegroundColor Green
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "Since the PDF Toolset is 100% client-side, you don't even need a server!"
Write-Host "We can open the app directly in your default browser."
Write-Host

$choice2 = Read-Host "[INPUT] Do you want to open the PDF Toolset locally in your browser now? (Y/N)"
if ($choice2 -eq 'y' -or $choice2 -eq 'Y') {
    Write-Host "[INFO] Opening local index.html..." -ForegroundColor Green
    $FullPath = Resolve-Path "$ProjectFolder/index.html"
    Start-Process $FullPath
}

Write-Host
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "🎉 INSTALLATION COMPLETE!" -ForegroundColor Green
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "Your files are saved in: $(Resolve-Path $ProjectFolder)" -ForegroundColor Blue
Write-Host "Thanks for using ZipLoot!" -ForegroundColor Green
Write-Host "==============================================" -ForegroundColor Cyan
