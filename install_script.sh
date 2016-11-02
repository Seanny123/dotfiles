cd /tmp

# system utilites
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
wget https://www.rescuetime.com/installers/rescuetime_beta_amd64.deb
sudo dpkg -i rescuetime_beta_amd64.deb
sudo add-apt-repository ppa:nathan-renniewaldock/flux
sudo apt-get update
sudo apt-get install --yes fluxgui trash-cli xclip git sublime-text

# Python specific
sudo pip install jupyter --upgrade
sudo pip install ipdb
sudo pip install flake8
