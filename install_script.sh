cd /tmp

# system utilites
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
wget https://www.rescuetime.com/installers/rescuetime_beta_amd64.deb
sudo dpkg -i rescuetime_beta_amd64.deb
sudo add-apt-repository ppa:nathan-renniewaldock/flux
sudo apt update
sudo apt install --yes fluxgui trash-cli xclip git sublime-text filezilla gedit unrar vlc pdfgrep htop skype-bin
sudo apt install --yes shutter

# TODO: figure out how to automatically install newest version of Wine and FoxitReader Portable

# Python specific
sudo apt install python-dev python-setuptools python-tk python-pip
sudo apt install python3-dev python3-setuptools python3-tk python3-pip
sudo -H pip install pip --upgrade
sudo -H pip install ipython ipdb flake8 seaborn pandas tables pytest scipy scikit-learn
sudo -H pip install jupyter --upgrade

# Waterloo VPN requirements
sudo apt --yes install network-manager-openconnect lib32z1 lib32ncurses5

# TODO: decide if I want to set up npm, typescript and Visual Studio Code on every machine I use
