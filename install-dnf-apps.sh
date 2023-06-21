# Import repository for VS code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf check-update

sudo dnf install -y \
gnome-tweaks \
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
vlc \
dropbox \
dconf-editor \
wine \
winetricks \
code \
octave \
redhat-rpm-config \
jetbrains-mono-fonts-all
            