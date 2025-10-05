#!/bin/bash

set -ouex pipefail


# Remove KDE

systemctl disable sddm.service

dnf5 remove -y \
plasma-desktop \
plasma-workspace \
plasma-workspace-wallpapers \
plasma-workspace-wayland \
sddm \
sddm-breeze \
sddm-kcm \
sddm-wayland-plasma \
akonadi-server \
akonadi-server-mysql \
ark \
audiocd-kio \
bluedevil \
breeze-icon-theme \
colord-kde \
dolphin \
ffmpegthumbs \
filelight \
flatpak-kcm \
kaccounts-integration-qt6 \
kaccounts-providers \
kcharselect \
kde-connect \
kde-gtk-config \
kde-inotify-survey \
kde-partitionmanager \
kde-settings-pulseaudio \
kdebugsettings \
kdegraphics-thumbnailers \
kdenetwork-filesharing \
kdeplasma-addons \
kdialog \
kdnssd \
kf6-baloo-file \
kfind \
khelpcenter \
kinfocenter \
kio-admin \
kio-gdrive \
kjournald \
kmenuedit \
konsole \
krdp \
krfb \
kscreen \
kscreenlocker \
ksshaskpass \
kunifiedpush \
kwalletmanager5 \
kwebkitpart \
kwin \
kwrite \
libappindicator-gtk3 \
pam-kwallet \
phonon-qt6-backend-vlc \
pinentry-qt \
plasma-breeze \
plasma-desktop-doc \
plasma-discover \
plasma-discover-notifier \
plasma-disks \
plasma-drkonqi \
plasma-nm \
plasma-nm-l2tp \
plasma-nm-openconnect \
plasma-nm-openswan \
plasma-nm-openvpn \
plasma-nm-pptp \
plasma-nm-vpnc \
plasma-pa \
plasma-print-manager \
plasma-systemmonitor \
plasma-thunderbolt \
plasma-vault \
plasma-welcome \
polkit-kde \
samba-usershares \
signon-kwallet-extension \
spectacle \
vlc-plugin-gstreamer \
plasma-pk-updates \
xdg-desktop-portal-kde \
xwaylandvideobridge

# Remove KDE-specific stuff that Bazzite installed
dnf5 remove -y \
steamdeck-kde-presets-desktop \
krdp \
wallpaper-engine-kde-plugin \
krunner-bazaar \

dnf5 autoremove -y

# Install COSMIC

dnf5 install -y \
cosmic-applets \
cosmic-bg \
cosmic-comp \
cosmic-edit \
cosmic-files \
cosmic-greeter \
cosmic-launcher \
cosmic-notifications \
cosmic-osd \
cosmic-panel \
cosmic-randr \
cosmic-screenshot \
cosmic-session \
cosmic-settings \
cosmic-term \
cosmic-workspaces \
cosmic-idle \
cosmic-player \
cosmic-wallpapers \
cosmic-app-library \
cosmic-icon-theme \
cosmic-settings-daemon \
xdg-desktop-portal-cosmic

systemctl enable cosmic-greeter.service

# Stuff that Fedora COSMIC Atomic supplies
dnf5 install -y \
gnome-keyring

# Things I consider "missing", because the Bazzite KDE installation comes with equivalents.
#
# - seahorse: Fedora COSMIC Atomic comes with gnome-keyring. Seahorse is the GUI for managing that
# - file-roller: Fedora COSMIC Atomic comes with Ark, but GTK apps are better for COSMIC, no?
dnf5 install -y \
seahorse \
file-roller
