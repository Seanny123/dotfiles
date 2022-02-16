dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:swapescape']"

sudo dnf install -y trash-cli xclip git filezilla gedit unrar pdfgrep htop shutter keepass2 curl git-cola meld ripgrep

sudo dnf install -y vlc strawberry

sudo dnf install fish bat fzf fd-find

# Remove the games, messaging and email stuff that I don't use that usually exists on a default Fedora Gnome install
sudo dnf remove -y thunderbird aisleriot gnome-calendar gnome-mahjongg gnome-mines gnome-sudoku gnome-books gnome-maps gnome-contacts

curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher install PatrickF1/fzf.fish

# Gnome tweaks
gsettings set org.gnome.shell.overrides workspaces-only-on-primary false
gsettings set org.gnome.desktop.wm.preferences focus-mode sloppy
gsettings set org.gnome.desktop.wm.preferences num-workspaces 4
gsettings set org.gnome.shell.app-switcher current-workspace-only true
