cd /tmp

dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:escape']"

# system utilites
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
wget https://www.rescuetime.com/installers/rescuetime_beta_amd64.deb
sudo dpkg -i rescuetime_beta_amd64.deb
sudo add-apt-repository --yes ppa:nathan-renniewaldock/flux
sudo add-apt-repository --yes ppa:webupd8team/sublime-text-3
sudo add-apt-repository --yes "deb http://archive.canonical.com/ubuntu $(lsb_release -sc) partner"
sudo apt update
sudo apt install --yes fluxgui trash-cli xclip git pulseaudio filezilla gedit unrar vlc pdfgrep htop shutter keepass2
sudo apt install --yes nautilus-dropbox
sudo apt install --yes skype sublime-text-installer

# TODO: figure out how to automatically install newest version of Wine and FoxitReader Portable

# Python specific
sudo apt install --yes python-dev python-setuptools python-tk python-pip
sudo apt install --yes python3-dev python3-setuptools python3-tk python3-pip
sudo -H pip3 install pip --upgrade
sudo -H pip3 install ipython ipdb flake8 seaborn pandas tables pytest scipy scikit-learn
sudo -H pip3 install jupyter --upgrade

# Waterloo VPN requirements
sudo apt install --yes network-manager-openconnect lib32z1 lib32ncurses5

# TODO: decide if I want to set up npm, typescript and Visual Studio Code on every machine I use

# Remove the games, messaging and email stuff that I don't use that usually exists on a default Ubuntu install
sudo apt remove --yes thunderbird aisleriot gnome-calendar gnome-mahjongg gnome-mines
