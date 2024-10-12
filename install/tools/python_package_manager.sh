#!/bin/bash

# install pip, pipdeptree and pip-autoremove
sudo apt install python3-pip
sudo pip install pipdeptree
sudo pip install pip-autoremove

# install pipx
# https://pypa.github.io/pipx/installation/
sudo apt update
sudo apt install pipx -y
pipx ensurepath

# install uv
# https://docs.astral.sh/uv/
curl -LsSf https://astral.sh/uv/install.sh | sh
