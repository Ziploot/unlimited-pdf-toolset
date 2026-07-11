#!/bin/bash
# [ZipLoot] Serverless PDF Toolset Installer
# ==============================================

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0;37m' # No Color

clear
echo -e "${CYAN}==============================================${NC}"
echo -e "${CYAN}   ⚡ ZIPLOOT SERVERLESS PDF TOOLSET INSTALLER${NC}"
echo -e "${CYAN}==============================================${NC}"
echo -e "${GREEN}   100% Client-Side | Zero Server Caps | \$0 Hosting${NC}"
echo -e "${CYAN}==============================================${NC}"
echo

ProjectFolder="unlimited-pdf-toolset-project"

if [ -d "$ProjectFolder" ]; then
    echo -e "${YELLOW}[WARN] Folder '$ProjectFolder' already exists.${NC}"
else
    echo -e "${BLUE}[INFO] Creating folder '$ProjectFolder'...${NC}"
    mkdir -p "$ProjectFolder"
    
    echo -e "${BLUE}[INFO] Downloading project files from GitHub...${NC}"
    BaseUrl="https://raw.githubusercontent.com/Ziploot/unlimited-pdf-toolset/main"
    
    curl -sL "$BaseUrl/index.html" -o "$ProjectFolder/index.html"
    curl -sL "$BaseUrl/package.json" -o "$ProjectFolder/package.json"
    curl -sL "$BaseUrl/vercel.json" -o "$ProjectFolder/vercel.json"
fi

echo
echo -e "${CYAN}==============================================${NC}"
echo -e "${GREEN}⚡ OPTION 1: 1-Click Cloud Deployment (Vercel - Free Hosting)${NC}"
echo -e "${CYAN}==============================================${NC}"
echo "The easiest way! Deploy to Vercel in 10 seconds for \$0:"
echo "1. The script will open the Vercel 1-Click deploy page."
echo "2. Connect your GitHub/Vercel account and click Deploy."
echo

read -p "Do you want to open the 1-Click Vercel Deployment page now? (Y/N): " choice1
if [[ "$choice1" =~ ^[Yy]$ ]]; then
    echo -e "${GREEN}[INFO] Opening deployment page...${NC}"
    URL="https://vercel.com/new/clone?repository-url=https://github.com/Ziploot/unlimited-pdf-toolset"
    if command -v xdg-open &> /dev/null; then
        xdg-open "$URL"
    elif command -v open &> /dev/null; then
        open "$URL"
    else
        echo -e "${YELLOW}Please visit this URL to deploy: $URL${NC}"
    fi
fi

echo
echo -e "${CYAN}==============================================${NC}"
echo -e "${GREEN}⚡ OPTION 2: Run Locally (Instant Browser Editor)${NC}"
echo -e "${CYAN}==============================================${NC}"
echo "Since the PDF Toolset is 100% client-side, you don't even need a server!"
echo "We can open the app directly in your default browser."
echo

read -p "Do you want to open the PDF Toolset locally in your browser now? (Y/N): " choice2
if [[ "$choice2" =~ ^[Yy]$ ]]; then
    echo -e "${GREEN}[INFO] Opening local index.html...${NC}"
    FILE_PATH="$(pwd)/$ProjectFolder/index.html"
    if command -v xdg-open &> /dev/null; then
        xdg-open "$FILE_PATH"
    elif command -v open &> /dev/null; then
        open "$FILE_PATH"
    else
        echo -e "${YELLOW}Please open this file in your browser: $FILE_PATH${NC}"
    fi
fi

echo
echo -e "${CYAN}==============================================${NC}"
echo -e "${GREEN}🎉 INSTALLATION COMPLETE!${NC}"
echo -e "${CYAN}==============================================${NC}"
echo -e "${BLUE}Your files are saved in: $(cd "$ProjectFolder" && pwd)${NC}"
echo -e "${GREEN}Thanks for using ZipLoot!${NC}"
echo -e "${CYAN}==============================================${NC}"
