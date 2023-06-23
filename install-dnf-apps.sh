# Check for and apply updates
dnf check-update
sudo dnf upgrade -y

# Install software
sudo dnf install -y gnome-tweaks \
gnome-shell-extension-user-theme \
gnome-shell-extension-appindicator \
gstreamer1-plugins-{bad-\*,good-\*,base} \
gstreamer1-plugin-openh264 \
gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel \
lame\* --exclude=lame-devel \
adw-gtk3-theme \
gtk2-devel \
tlp \
tlp-rdw \
openssl-devel \
vlc \
dropbox \
dconf-editor \
wine \
winetricks \
octave \
redhat-rpm-config \
jetbrains-mono-fonts-all \
mingw64-gcc \
gcc \
cmake            
