#!/bin/bash

# update and upgrade packages
sudo apt update && sudo apt -y upgrade && sudo apt -y autoremove

# curl: command line tool for transferring data with URL syntax
sudo apt install -y curl

# wget: non-interactive network downloader
sudo apt install -y wget

# git version control
sudo apt install git-all -y
