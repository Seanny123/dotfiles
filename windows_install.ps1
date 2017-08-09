# Install chocolatey
Set-ExecutionPolicy AllSigned
iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex

# Install utilities
choco install --yes googlechrome firefox git notepadplusplus filezilla vlc sublimetext3 dropbox 7zip gpu-z foxitreader qbittorrent

# JS dev installation
choco install -yes visualstudiocode nodejs yarn
npm install -g tslint typescript

# installing Python depends on how hardcore I want to be and thus is not included in this script until Numpy/Scipy
# can be installed with OpenBLAS or MKL optimizations without having to use Conda
