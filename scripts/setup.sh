#!/bin/bash

set -e # stop the script if it gives an error

echo ""
echo "-> Iniciando configuração do ambiente..."

# directory of the script
DOTFILES_DIR="$HOME/.dotfiles"
ALIASES_DIR="$DOTFILES_DIR/aliases"
INSTALL_DIR="$DOTFILES_DIR/install"

# function to clone dotfiles
clone_dotfiles() {
    if [ -d "$DOTFILES_DIR" ]; then
        read -p "O diretório .dotfiles já existe. Deseja sobrescrevê-lo? (s/n) " confirm
        if [[ "$confirm" != "s" ]]; then
            exit 1
        fi
        rm -rf "$DOTFILES_DIR"
    fi
    git clone https://github.com/marcelohfonseca/dotfiles.git "$DOTFILES_DIR"
}

# function to execute scripts
install_scripts() {
    local category="$1"
    for script in "$DOTFILES_DIR/install/$category/"*.sh; do
        echo ""
        echo "-> Executando script: $script"
        bash "$script"
    done
}

# install system prerequisites
echo ""
echo "-> Instalando pré-requisitos..."
bash "$DOTFILES_DIR/scripts/prerequisites.sh" || { echo "Falha ao executar prerequisites.sh. Abortando."; exit 1; }

# install scripts
install_scripts "tools"
install_scripts "utilities"
install_scripts "python-libraries"

# delete dotfiles
echo ""
echo "-> Deletando dotfiles..."
rm -rf "$HOME/.aliases"
rm -rf "$HOME/.bashrc"
rm -rf "$HOME/.bash_profile"
rm -rf "$HOME/.gitconfig"
rm -rf "$HOME/.zshrc"
rm -rf "$HOME/.zprofile"
rm -rf "$HOME/.p10k.zsh"

# clone dotfiles
clone_dotfiles

# create symlinks for dotfiles
echo ""
echo "-> Criando links simbólicos para os dotfiles..."
ln -s "$DOTFILES_DIR/aliases/.aliases" "$HOME/.aliases"
ln -s "$DOTFILES_DIR/dotfiles/bash/.bashrc" "$HOME/.bashrc"
ln -s "$DOTFILES_DIR/dotfiles/bash/.bash_profile" "$HOME/.bash_profile"
ln -s "$DOTFILES_DIR/dotfiles/git/.gitconfig" "$HOME/.gitconfig"
ln -s "$DOTFILES_DIR/dotfiles/zsh/.zshrc" "$HOME/.zshrc"
ln -s "$DOTFILES_DIR/dotfiles/zsh/.zprofile" "$HOME/.zprofile"
ln -s "$DOTFILES_DIR/dotfiles/zsh/.p10k.zsh" "$HOME/.p10k.zsh"

# reload new settings
echo ""
echo "-> Carregando perfil do zsh..."
source ~/.zshrc || { echo "Falha ao tentar aplicar as mudanças em ~/.zshrc. Reinicie seu terminal."; exit 1; }

# make it your default shell
chsh -s $(which zsh) $USER

echo ""
echo "-> Configuração do ambiente finalizada!"
