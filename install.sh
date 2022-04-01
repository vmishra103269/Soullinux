#!/bin/sh

function addrepo() {
  # Replace Arch pacman.conf with Soul pacman.conf
  rm /var/lib/pacman/sync/*db
  pacman -sc
  rm /etc/pacman.conf
  cp ./config/pacman.conf /etc/
}

function editos_release() {
  # Repleaces Arch os-release with Soul os-release (neofetch will show arch logo)
  rm /etc/os-release
  cp ./config/os-release /etc
}

function greeter() {
  name = "Soullinux"
  echo "$name base installer"
  if [$USER == "root"]
    echo "Run this script as root"
  else
    addrepo()
    editos_release()
  fi
}
