cd /tmp
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo add-apt-repository ppa:kilian/f.lux
sudo apt-get update
sudo apt-get install fluxgui trash-cli xclip git
sudo pip install ipython --upgrade
sudo pip install ipdb
sudo pip install flake8
curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
sudo apt-get install --yes nodejs
sudo ln -s /usr/bin/nodejs /usr/bin/node
