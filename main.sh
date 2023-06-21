#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin
HEIGHT=15
WIDTH=90
CHOICE_HEIGHT=4
BACKTITLE="Fedora Setup Util - By Osiris - https://stealingthe.network"
TITLE="Make a selection"
MENU="Please Choose one of the following options:"

#Check to see if Dialog is installed, if not install it
if [ $(dpkg-query -W -f='${Status}' dialog 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
  sudo dnf install -y dialog;
fi

OPTIONS=(1 "Enable RPM Fusion - Enables the RPM Fusion Repos"
         2 "Enable Flatpak - Flatpak is installed by default but not enabled"
         3 "Speed up DNF - This enables fastestmirror, max downloads and deltarpms"
         4 "Install Software - Installs a bunch of my most used software"
         5 "Setup Gnome preferences - Set keyboard shortcuts, settings and themes."
         6 "Quit")

while [ "$CHOICE -ne 4" ]; do
    CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --nocancel \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

    clear
    case $CHOICE in
        1)  echo "Enabling RPM Fusion"
            sudo dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
            notify-send "RPM Fusion has been enabled" --expire-time=10
           ;;
        2)  echo "Enabling Flatpak"
            flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
            flatpak update
            notify-send "Flatpak has been enabled" --expire-time=10
           ;;
        3)  echo "Speeding Up DNF"
            echo 'fastestmirror=1' | sudo tee -a /etc/dnf/dnf.conf
            echo 'max_parallel_downloads=10' | sudo tee -a /etc/dnf/dnf.conf
            echo 'deltarpm=true' | sudo tee -a /etc/dnf/dnf.conf
            notify-send "DNF config has been amended" --expire-time=10
           ;;
        4)  echo "Installing Software"

            # DNF software
            sh install-dnf-apps.sh &

            # Flatpak software
            sh install-flatpak-apps.sh &

            # Install Julie
            sh install-julia.sh &

            # Install Rust
            sh install-rust.sh

            wait

            notify-send "Software has been installed" --expire-time=10

           ;;
        5)  echo "Setting prefeered gnome shell settings"

            sh configure-gnome.sh
            
            notify-send "Gnome has been configured" --expire-time=10
           ;;
        6)
          exit 0
          ;;
    esac
done
