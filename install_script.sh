cd /tmp

# system utilites
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
wget https://www.rescuetime.com/installers/rescuetime_beta_amd64.deb
sudo dpkg -i rescuetime_beta_amd64.deb
sudo add-apt-repository ppa:nathan-renniewaldock/flux
sudo apt update
sudo apt install --yes fluxgui trash-cli xclip git sublime-text

# Python specific
sudo apt install python-dev python-setuptools python-tk
sudo pip -H install pip --upgrade
sudo pip -H install ipython ipdb flake8 seaborn pandas tables
sudo pip install jupyter --upgrade
