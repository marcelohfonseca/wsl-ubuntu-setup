#!/bin/bash

# install pyenv
# https://github.com/pyenv/pyenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

# compile a dynamic Bash extension to speed up Pyenv
cd ~/.pyenv && src/configure && make -C src; cd ~

# adjust the session-wide environment for your .zshrc file
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi' >> ~/.zshrc

# install the Python build dependencies for pyenv
sudo apt update; sudo apt install build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev curl \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev -y
