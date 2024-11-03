# Setup do Ubuntu no WSL

Este projeto contém um script de instalação para configurar o Ubuntu no WSL com as ferramentas e bibliotecas que eu uso no meu dia a dia.

## Estrutura do Projeto

```txt
    .
    ├── install/
    │   ├── python-libraries/
    │   │   ├── data-science.sh
    │   │   └── global.sh
    │   ├── tools/
    │   │   ├── app-asdf.sh
    │   │   ├── app-docker.sh
    │   │   ├── app-gitflow-cli.sh
    │   │   ├── app-github-cli.sh
    │   │   ├── app-pip.sh
    │   │   ├── app-pipx.sh
    │   │   ├── app-pyenv.sh
    │   │   ├── app-uv.sh
    │   │   ├── apps-terminal.sh
    │   ├── utilities/
    │   │   ├── user-setup.sh
    │   │   └── zsh.sh
    │   ├── libraries-tex.sh
    │   └── prerequisites.sh
    ├── README.md
    └── setup.sh
```

## Como Usar

### Clone o repositório

```sh
git clone git@github.com:marcelohfonseca/wsl-ubuntu-setup.git ~/.wsl-ubuntu-setup

```

### Dê permissões de execução para o arquivo principal

```sh
chmod +x ~/.wsl-ubuntu-setup/setup.sh
```

### Execute o script de instalação

```sh
~/.wsl-ubuntu-setup/setup.sh
```

* O script irá instalar todas as dependências, configurar as ferramentas e criar os links simbólicos para os dotfiles.
* Caso o diretório .dotfiles já exista, você será perguntado se deseja sobrescrevê-lo.

## O que o Script de Instalação Faz?

1. Clona o repositório para ~/.dotfiles (ou sobrescreve se já existir).
2. Instala pré-requisitos do sistema.
3. Executa os scripts de instalação em ordem:
    * **utilities**/: Configura o usuário, como o arquivo .gitconfig e instala o zsh.
    * **tools**/: Instala ferramentas como asdf, docker, gitflow, gh, pyenv, etc.
    * **python-libraries**/: Instala bibliotecas do python.
4. Cria links simbólicos dos dotfiles para o diretório $HOME.
5. Recarrega as novas configurações do zsh.

## Observações

* Este projeto foi desenvolvido para meu uso pessoal, mas sinta-se à vontade para adaptá-lo às suas necessidades.
* Certifique-se de entender o que os scripts de instalação estão fazendo antes de executá-los, pois eles podem modificar seu sistema.
* Em caso de dúvidas, problemas ou sugestões, abra uma issue no repositório.
