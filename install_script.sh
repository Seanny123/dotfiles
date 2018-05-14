cd /tmp

sudo dpkg --add-architecture i386 
dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:escape']"

# Debian systems don't have `add-apt-repository` by default
sudo apt install software-properties-common python-software-properties

## System utilites
# Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
# Wine setup
wget -nc https://dl.winehq.org/wine-builds/Release.key
sudo apt-key add Release.key
sudo apt-add-repository https://dl.winehq.org/wine-builds/ubuntu/
# Sublime setup
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
# Visual Studio Code setup
sudo add-apt-repository -y "deb https://packages.microsoft.com/repos/vscode stable main"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EB3E94ADBE1229CF
# Pycharm
sudo snap install pycharm-professional --classic

# Partner repos
sudo add-apt-repository --yes "deb http://archive.canonical.com/ubuntu $(lsb_release -sc) partner"
sudo apt update

sudo apt install --install-recommends winehq-staging
sudo apt -y trash-cli xclip git filezilla gedit unrar vlc pdfgrep htop shutter keepass2 curl wine
sudo apt -y nautilus-dropbox
sudo apt -y skype sublime-text code


wget https://www.foxitsoftware.com/downloads/latest.php?product=Foxit-Reader&platform=Windows&package_type=exe&language=English -O Foxit.exe

# Python specific
sudo apt -y python-dev python-setuptools python-tk python-pip
sudo apt -y python3-dev python3-setuptools python3-tk python3-pip
sudo -H pip3 install pip --upgrade
sudo -H pip3 install ipython ipdb flake8 seaborn pandas tables pytest scipy scikit-learn pylint notebook h5py hyperopt nbdime pyqt5
sudo -H pip3 install jupyter --upgrade

mkdir ~/.jupyter/custom
wget https://raw.githubusercontent.com/Seanny123/jupyter-dark-theme/master/custom.css -P ~/.jupyter/custom
wget https://raw.githubusercontent.com/Seanny123/Linux-Settings/custom.js -P ~/.jupyter/custom

# Git specific
git config --global user.name "Sean Aubin"
git config --global user.email seanaubin@gmail.com
git-nbdiffdriver config --enable --global

# Waterloo VPN requirements
sudo apt install --yes network-manager-openconnect lib32z1 lib32ncurses5
wget https://cn-vpn.uwaterloo.ca/CACHE/stc/3/binaries/vpnsetup.sh
sudo bash vpnsetup.sh

# Remove the games, messaging and email stuff that I don't use that usually exists on a default Ubuntu install
sudo apt remove --yes thunderbird aisleriot gnome-calendar gnome-mahjongg gnome-mines gnome-sudoku gnome-books gnome-maps gnome-contacts 

# Configure wine
wine notepad
wine Foxit.exe

# Configure NodeJS
# Note: 9.x might be available in the future
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo npm install -g typescript tslint

# VS Code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update
sudo apt install code

# Gnome tweaks
gsettings set org.gnome.shell.overrides workspaces-only-on-primary false
gsettings set org.gnome.desktop.wm.preferences focus-mode sloppy
gsettings set org.gnome.desktop.wm.preferences num-workspaces 4
gsettings set org.gnome.shell.app-switcher current-workspace-only true

# Update and upgrade, now that we have all these new packages
sudo apt update
sudo apt upgrade
