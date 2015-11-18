cd /tmp
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo add-apt-repository ppa:kilian/f.lux
sudo apt-get update
sudo apt-get install --yes fluxgui trash-cli xclip git sublime-text
sudo pip install ipython --upgrade
sudo pip install ipdb
sudo pip install flake8
curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
sudo apt-get install --yes nodejs
sudo ln -s /usr/bin/nodejs /usr/bin/node
sudo npm install jcsc -g
sudo npm install jshint -g
wget https://www.rescuetime.com/installers/rescuetime_beta_amd64.deb
