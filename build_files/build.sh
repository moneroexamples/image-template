#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/43/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
#dnf5 install -y tmux 
#dnf5 update -y 

dnf5 remove -y steam firewalld lutris bazaar \
	steamdeck-kde-presets-desktop steam-devices \
	sunshine waydroid


dnf5  install -y mc tigervnc tigervnc-server \
                autossh fluxbox xterm \
                rofi fd fzf zoxide konsole \
		krusader xsane

dnf --enablerepo=rpmfusion-free install -y VirtualBox

# for virtualbox
#dnf5 install -y kernel-devel kernel-headers gcc make elfutils-libelf-devel


#wget http://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo
#mv virtualbox.repo /etc/yum.repos.d/virtualbox.repo
#dnf5 install -y VirtualBox-7.2
#sudo usermod -a -G vboxusers mwo

#dnf5 install -y VirtualBox

#dnf5 install -y  plasma-workspace-x11

# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

#### Example for enabling a System Unit File

systemctl enable podman.socket
