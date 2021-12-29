#!/usr/bin/env bash
echo "hey btw this only installs packages cause i am too lazy to do that, you still have to setup everything else."
git clone "https://aur.archlinux.org/yay.git"
cd ${HOME}/yay
makepkg -si --noconfirm
cd ~
PKGS=(
'plasma-desktop'
'nvidia'
'pipewire'
'konsole'
'dolphin'
base
base-devel
linux
linux-headers
lnux-firmware'
'networkmanager'
)
AURPKGS=(
'spotify'
'steam'
'microsoft-edge-stable-bin'
)
echo "ensuring pip"
python3 -m ensure-pip
useradd -m Vincent Jose
echo "installing the big boys"
for PKG in "${PKGS[@]}"; do
  echo "Now installing ${PKG}"
  sudo pacman -S "$PKG" --noconfirm --needed
for PKG in "${AURPKGS[@]}"; do
  echo "Now installing ${PKG}"
  sudo yay -S --noconfirm $PKG
