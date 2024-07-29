#!/bin/bash

# Vérifiez si le fichier packages.txt existe
if [ ! -f ~/dotfiles/.backup/pacman_packages ]; then
  echo "Le fichier pacman_packages n'existe pas."
  exit 1
fi

# Lisez le fichier packages.txt ligne par ligne
while IFS= read -r line; do
  # Extraire uniquement le nom du paquet (le premier mot avant l'espace)
  package=$(echo "$line" | awk '{print $1}')
  
  # Vérifiez si la ligne n'est pas vide
  if [ -n "$package" ]; then
    # Exécutez la commande sudo pacman -S pour chaque paquet
    sudo pacman -S --needed --noconfirm "$package"
  fi
done < ~/dotfiles/.backup/pacman_packages
