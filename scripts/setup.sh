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
            echo "Cancelando a instalação."
            exit 1
        fi
        rm -rf "$DOTFILES_DIR"
    fi
    git clone git@github.com:marcelohfonseca/dotfiles.git "$DOTFILES_DIR"
}

# function to create a symlink
create_symlink() {
    local target="$1"
    local link_name="$2"
    if [ -e "$link_name" ]; then
        rm -rf "$link_name"
    fi
    ln -s "$target" "$link_name"
}

# function to execute scripts
install_scripts() {
    local category="$1"
    shopt -s nullglob
    local scripts=("$DOTFILES_DIR/install/$category"*.sh)
    if [ ${#scripts[@]} -eq 0 ]; then
        echo "Nenhum script encontrado em $DOTFILES_DIR/install/$category."
        return
    fi
    for script in "${scripts[@]}"; do
        echo "Executando script: $script"
        bash "$script" || true
    done
}

# install system prerequisites
bash prerequisites.sh || { echo "Falha ao executar prerequisites.sh. Abortando."; exit 1; }

# check git installation
command -v git >/dev/null 2>&1 || { echo "Git não está instalado. Abortando." >&2; exit 1; }

# install scripts
install_scripts "tools"
install_scripts "utilities"
install_scripts "python-libraries"

# create symlinks for dotfiles
echo ""
echo "-> Criando links simbólicos para os dotfiles..."
rm -rf "$HOME/.aliases.sh"
create_symlink "$DOTFILES_DIR/aliases/aliases.sh" "$HOME/.aliases.sh"
rm -rf "$HOME/.bashrc"
create_symlink "$DOTFILES_DIR/bash/.bashrc" "$HOME/.bashrc"
rm -rf "$HOME/.bash_profile"
create_symlink "$DOTFILES_DIR/bash/.bash_profile" "$HOME/.bash_profile"
rm -rf "$HOME/.gitconfig"
create_symlink "$DOTFILES_DIR/git/.gitconfig" "$HOME/.gitconfig"
rm -rf "$HOME/.zshrc"
create_symlink "$DOTFILES_DIR/zsh/.zshrc" "$HOME/.zshrc"
rm -rf "$HOME/.zprofile"
create_symlink "$DOTFILES_DIR/zsh/.zprofile" "$HOME/.zprofile"
rm -rf "$HOME/.p10k.zsh"
create_symlink "$DOTFILES_DIR/zsh/.p10k.zsh" "$HOME/.p10k.zsh"

# reload new settings
source ~/.zshrc || { echo "Falha ao tentar aplicar as mudanças em ~/.zshrc. Reinicie seu terminal."; exit 1; }

# make it your default shell
chsh -s $(which zsh) $USER

echo ""
echo "-> Configuração do ambiente finalizada!"
