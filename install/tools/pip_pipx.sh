#!/bin/bash

# install pip, pipdeptree and pip-autoremove
sudo apt install python3-pip -y
sudo pip install pipdeptree
sudo pip install pip-autoremove

# install pipx
# https://pypa.github.io/pipx/installation/
python3 -m pip install --user pipx
python3 -m pipx ensurepath --force

# need to install the python3-venv package to use pipx
sudo apt install python3-venv -y