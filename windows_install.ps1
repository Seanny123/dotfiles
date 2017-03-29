# Install chocolatey
Set-ExecutionPolicy AllSigned
iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex

# Install utilities
choco install --yes googlechrome firefox git notepadplusplus f.lux filezilla vlc sublimetext3 dropbox 7zip

# Acquire Foxit Reader
wget https://www.foxitsoftware.com/downloads/latest.php?product=Foxit-Reader&platform=Windows&package_type=exe&language=English -OutFile ~\Downdloads

# JS dev installation
choco install -yes visualstudiocode nodejs
npm install -g tslint typescript

# installing Python depends on how hardcore I want to be and thus is not included in this script until Numpy/Scipy
# becomes compatible with OpenBLAS without having to use Conda
