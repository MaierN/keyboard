#!/bin/bash

# note: you may edit /usr/share/X11/xkb/rules/evdev.xml to add an entry in Plasma's keyboard layout list

kb_file_name="nickbv4"
kb_display_name="nic4"

sudo cp "$kb_file_name" /usr/share/X11/xkb/symbols/

# set config in `~/.config/kxkbrc`
kwriteconfig6 --file kxkbrc --group Layout --key DisplayNames "$kb_display_name" --notify
kwriteconfig6 --file kxkbrc --group Layout --key LayoutList "$kb_file_name" --notify
kwriteconfig6 --file kxkbrc --group Layout --key VariantList --delete --notify
kwriteconfig6 --file kxkbrc --group Layout --key Use true --notify

# reload the config
dbus-send --session --type=signal --dest=org.kde.keyboard /Layouts org.kde.keyboard.reloadConfig
