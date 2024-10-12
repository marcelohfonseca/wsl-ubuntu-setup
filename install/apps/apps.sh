#!/bin/bash

# spotify
sudo snap install spotify

# obsidian
sudo snap install obsidian --classic

# vscode
sudo snap install --classic code # or code-insiders

# bitwarden
sudo snap install bitwarden
sudo snap install bw

# gimp
sudo snap install gimp

# microsoft 365 web
sudo snap install ms-365-electron

# obs studio
sudo snap install obs-studio
sudo snap connect obs-studio:avahi-control
sudo snap connect obs-studio:kernel-module-observe
sudo snap connect obs-studio:screencast-legacy
