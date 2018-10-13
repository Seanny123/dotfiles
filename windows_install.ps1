# Install chocolatey
Set-ExecutionPolicy AllSigned
iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex

# Install utilities
cinst -y googlechrome firefox git notepadplusplus filezilla vlc sublimetext3 visualstudiocode dropbox 7zip gpu-z foxitreader qbittorrent slack evernote workflowy

# JS dev installation
cinst -y nodejs yarn
npm install -g tslint typescript

# Python (no MKL optimizations)
choco install anaconda3 --params="/AddToPath:1" --yes
choco install pycharm

# Gaming
cinst -y steam

# Android
cinst -y androidstudio

# TODO: setup blue light filtering
