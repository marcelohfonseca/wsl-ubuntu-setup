#!/bin/bash

# install pip, pipdeptree and pip-autoremove
python3 -m ensurepip --upgrade
sudo pip install pipdeptree
sudo pip install pip-autoremove

# install pipx
# https://pypa.github.io/pipx/installation/
sudo apt update
sudo apt install pipx
pipx ensurepath
