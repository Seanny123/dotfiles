cd /tmp

dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:swapescape']"

## System utilites
# Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb

# Wine setup
# taken from https://wine.htmlvalidator.com/install-wine-on-ubuntu-20.04.html
sudo dpkg --add-architecture i386
sudo mkdir -pm755 /etc/apt/keyrings
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/focal/winehq-focal.sources

sudo apt install --install-recommends winehq-staging

sudo apt install -y trash-cli xclip x11-utils git filezilla gedit unrar vlc pdfgrep htop shutter keepass2 curl git-cola meld ripgrep tldr
tldr -u
sudo apt install -y bat fzf fd-find

# fman setup
wget -q -O - https://download.fman.io/rpm/public.gpg | sudo gpg --dearmor -o /usr/share/keyrings/fman-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/fman-keyring.gpg] https://fman.io/updates/ubuntu/ stable main" | sudo tee /etc/apt/sources.list.d/fman.list

# add strawberry music player repo
sudo add-apt-repository -y ppa:jonaski/strawberry
sudo apt update
sudo apt install -y vlc strawberry

# install fman
sudo apt install -y fman

# fish install
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install -y fish

wget -O Foxit.exe "https://www.foxitsoftware.com/downloads/latest.php?product=Foxit-Reader&platform=Windows&package_type=exe&language=English" 

# Remove the games, messaging and email stuff that I don't use that usually exists on a default Ubuntu install
sudo apt remove --yes thunderbird aisleriot gnome-calendar gnome-mahjongg gnome-mines gnome-sudoku gnome-books gnome-maps gnome-contacts 

# Configure wine
wine notepad
wine Foxit.exe

# Gnome tweaks
# TODO: this doesn't work anymore
gsettings set org.gnome.shell.overrides workspaces-only-on-primary false
gsettings set org.gnome.desktop.wm.preferences focus-mode sloppy
gsettings set org.gnome.desktop.wm.preferences num-workspaces 4
gsettings set org.gnome.shell.app-switcher current-workspace-only true

# Update and upgrade, now that we have all these new packages
sudo apt update
sudo apt upgrade
