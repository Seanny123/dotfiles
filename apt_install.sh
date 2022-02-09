cd /tmp

sudo dpkg --add-architecture i386
dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:escape']"

# Debian systems don't have `add-apt-repository` by default
sudo apt install software-properties-common python-software-properties

## System utilites
# Chrome
wget -O google-signing-key.pub https://dl.google.com/linux/linux_signing_key.pub
sudo apt-key add google-signing-key.pub
# Wine setup
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo apt-add-repository https://dl.winehq.org/wine-builds/ubuntu/

# Partner repos
sudo add-apt-repository --yes "deb http://archive.canonical.com/ubuntu $(lsb_release -sc) partner"
sudo apt update

sudo apt install --install-recommends winehq-staging
sudo apt install -y trash-cli xclip git filezilla gedit unrar vlc pdfgrep htop shutter keepass2 curl google-chrome-stable
sudo apt install -y nautilus-dropbox


wget -O Foxit.exe "https://www.foxitsoftware.com/downloads/latest.php?product=Foxit-Reader&platform=Windows&package_type=exe&language=English" 

# Python specific
sudo apt install -y python-dev python-setuptools python-tk python-pip
sudo apt install -y python3-dev python3-setuptools python3-tk python3-pip
sudo -H pip3 install pip --upgrade
sudo -H pip3 install ipython ipdb flake8 seaborn pandas tables pytest scipy scikit-learn pylint notebook h5py hyperopt nbdime pyqt5
sudo -H pip3 install jupyter --upgrade

mkdir ~/.jupyter/custom
wget https://raw.githubusercontent.com/Seanny123/jupyter-dark-theme/master/custom.css -P ~/.jupyter/custom
wget https://raw.githubusercontent.com/Seanny123/dotfiles/custom.js -P ~/.jupyter/custom

# Remove the games, messaging and email stuff that I don't use that usually exists on a default Ubuntu install
sudo apt remove --yes thunderbird aisleriot gnome-calendar gnome-mahjongg gnome-mines gnome-sudoku gnome-books gnome-maps gnome-contacts 

# Configure wine
wine notepad
wine Foxit.exe

# Gnome tweaks
gsettings set org.gnome.shell.overrides workspaces-only-on-primary false
gsettings set org.gnome.desktop.wm.preferences focus-mode sloppy
gsettings set org.gnome.desktop.wm.preferences num-workspaces 4
gsettings set org.gnome.shell.app-switcher current-workspace-only true

# Update and upgrade, now that we have all these new packages
sudo apt update
sudo apt upgrade
