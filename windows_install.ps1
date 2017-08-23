# Install chocolatey
Set-ExecutionPolicy AllSigned
iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex

# Install utilities
choco install --yes googlechrome firefox git notepadplusplus filezilla vlc sublimetext3 dropbox 7zip gpu-z foxitreader qbittorrent

# JS dev installation
choco install -yes visualstudiocode nodejs yarn
npm install -g tslint typescript

# Python (no MKL optimizations)
# TODO: also add to path?
choco install --yes anaconda3

# Gaming
choco install --yes steam

# Android
choco install --yes androidstudio

# TODO: setup blue light filtering
