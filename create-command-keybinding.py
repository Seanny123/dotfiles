"""Adapted from https://askubuntu.com/a/597414/168094"""

import argparse
import subprocess
import sys

parser = argparse.ArgumentParser()
parser.add_argument("name", help="Name of keyboard shortcut")
parser.add_argument("command", help="Command to execute")
parser.add_argument("binding", help="Keyboard key bindings")
args = parser.parse_args()

# defining keys & strings to be used
key = "org.gnome.settings-daemon.plugins.media-keys custom-keybindings"
subkey1 = f"{key.replace(' ', '.')[:-1]}:"
item_s = f"/{key.replace(' ', '/').replace('.', '/')}/"
firstname = "custom"

# get the current list of custom shortcuts
get = lambda cmd: subprocess.check_output(["/bin/bash", "-c", cmd]).decode("utf-8")
print(key)
current = eval(get(f"gsettings get {key}"))

# make sure the additional keybinding mention is no duplicate
n = 1
while True:
    new = f"{item_s}{firstname}{n}/"
    if new in current:
        n += 1
    else:
        break

# add the new keybinding to the list
current.append(new)

# create the shortcut, set the name, command and shortcut key
cmd0 = f'gsettings set {key} "{str(current)}"'
cmd1 = f'gsettings set {subkey1}{new} name "{args.name}"'
cmd2 = f'gsettings set {subkey1}{new} command "{args.command}"'
cmd3 = f'gsettings set {subkey1}{new} binding "{args.binding}"'

for cmd in (cmd0, cmd1, cmd2, cmd3):
    subprocess.call(["/bin/bash", "-c", cmd])
