# Set Gnome shell preferences
gsettings set org.gnome.desktop.interface enable-hot-corners false
gsettings set org.gnome.desktop.interface font-antialiasing rgba
gsettings set org.gnome.desktop.wm.preferences button-layout ':minimize,maximize,close'
gsettings set org.gnome.desktop.wm.preferences focus-new-windows 'smart'
gsettings set org.gnome.desktop.peripherals.mouse accel-profile 'flat'
gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll true
gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true
gsettings set org.gnome.desktop.peripherals.touchpad two-finger-scrolling-enabled true
gsettings set org.gnome.desktop.interface clock-format '24h'
gsettings set org.gnome.desktop.interface clock-show-seconds true
gsettings set org.gnome.mutter center-new-windows true

# Set power button behavior
gsettings set org.gnome.settings-daemon.plugins.power power-button-action 'hibernate'

# Create new custom key binds
python gsettings-create-key-bind.py 'Gnome Terminal' 'gnome-terminal' '<Super>t'
python gsettings-create-key-bind.py 'Nautilus Files' 'nautilus' '<Super>e'
python gsettings-create-key-bind.py 'Obsidian' 'flatpak run md.obsidian.Obsidian' '<Super>o'

# Show desktop on Super-D
gsettings set org.gnome.desktop.wm.keybindings show-desktop "['<Super>d']"

# Change alt-tab behavior
gsettings set org.gnome.desktop.wm.keybindings switch-applications "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-applications-backward "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Alt>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "['<Shift><Alt>Tab']"
