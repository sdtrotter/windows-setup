﻿# integrated environments
#choco install -y visualstudio2017community

# text editors
choco install -y vscode
choco install -y notepadplusplus

# python
choco install -y python
choco install -y vcbuildtools

# source control
choco install -y --package-parameters="'/GitAndUnixToolsOnPath /WindowsTerminal'" git
choco install -y github-desktop
choco install -y sourcetree

# cloud services
#choco install -y awscli                 # untried
#choco install -y azure-cli              # untried

# build tools
#choco install -y vagrant               # untried
#choco install -y yo                    # untried

# dev tool extensions
choco install -y selenium-chrome-driver
choco install -y selenium-gecko-driver
#choco install -y selenium-edge-driver
#choco install -y microsoftwebdriver
code --install-extension msjsdiag.debugger-for-chrome
code --install-extension msjsdiag.debugger-for-edge

# package managers
choco install -y nodejs

# database
#choco install -y sqlitebrowser         # untried

# terminal emulators
#choco install -y ConEmu
#choco install -y cmder
#choco install -y cmdermini
#choco install -y mobaxterm
#choco install -y hyper

# coding fonts
choco install -y firacode
#choco install -y hackfont
#choco install -y anonymouspro
#choco install -y dejavufonts
#choco install -y droidsansmono
#choco install -y inconsolata
#choco install -y SourceCodePro

# misc cli commands
choco install -y bat
choco install -y colortool
choco install -y curl
choco install -y jq
choco install -y less
choco install -y wget
#choco install -y ripgrep               # untried
#choco install -y fzf                   # untried
