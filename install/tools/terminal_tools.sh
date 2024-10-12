#!/bin/bash

# tree: list directories recursively
sudo apt install tree -y

# bat: cat clone with syntax highlighting
sudo apt install bat -y

# htop: interactive process viewer
sudo apt install htop -y

# ncdu: disk usage analyzer
sudo apt install ncdu -y

# silversearcher-ag: code searching tool
sudo apt install silversearcher-ag -y

# eza: ls alternative
sudo mkdir -p /etc/apt/keyrings
wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
sudo chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list
sudo apt update
sudo apt install -y eza
