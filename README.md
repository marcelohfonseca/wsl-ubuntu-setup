# Meus Dotfiles

Este repositório contém meus arquivos de configuração (dotfiles) para bash, zsh, git e outras ferramentas. O objetivo é ter um ambiente de desenvolvimento consistente e personalizado em qualquer máquina que eu use.

## Estrutura do Projeto

```txt
./
├── aliases/
│   └── .aliases
├── dotfiles/
│   ├── bash/
│   │   ├── .bashrc
│   │   └── .profile
│   ├── git/
│   │   └── .gitconfig
│   └── zsh/
│       ├── .p10k.zsh
│       ├── .zprofile
│       └── .zshrc
├── install/
│   ├── apps/
│   │   └── apps.sh
│   ├── python-libraries/
│   │   └── data_science.sh
│   │   └── global.sh
│   ├── tools/
│   │   ├── asdf.sh
│   │   ├── docker.sh
│   │   ├── gitflow_github.sh
│   │   ├── latex.sh
│   │   ├── pyenv.sh
│   │   ├── python_package_manager.sh
│   │   ├── terminal_tools.sh
│   │   └── zsh.sh
│   └── utilities/
│       └── user_setup.sh
├── scripts/
│   └── prerequisites.sh
│   └── setup.sh
└── README.md
```

### Como Usar

#### Clone o repositório

```sh
git clone git@github.com:marcelohfonseca/dotfiles.git ~/.dotfiles

```

#### Execute o script de instalação

```sh
~/.dotfiles/scripts/setup.sh
```

* O script irá instalar todas as dependências, configurar as ferramentas e criar os links simbólicos para os dotfiles.
* Caso o diretório .dotfiles já exista, você será perguntado se deseja sobrescrevê-lo.

### O que o Script de Instalação Faz?

1. Clona o repositório para ~/.dotfiles (ou sobrescreve se já existir).
2. Instala pré-requisitos do sistema.
3. Executa os scripts de instalação em ordem:
    * **tools**/: Instala ferramentas como zsh, pyenv, docker, etc.
    * **utilities**/: Configura o usuário, como o arquivo .gitconfig.
    * **library**/: Instala bibliotecas e frameworks.
    * **apps**/: Instala os aplicativos snap ou .deb do Ubuntu.
4. Cria links simbólicos dos dotfiles para o diretório $HOME.
5. Recarrega as novas configurações do zsh.

### Personalização

* **Aliases**: Adicione seus próprios aliases no arquivo **aliases/.aliases**.
* **Dotfiles**: Modifique os arquivos em **dotfiles/** para customizar seu ambiente.
* **Scripts de Instalação**: Se precisar de mais personalizações, crie ou modifique os scripts em **install/**.

### Atualização

Para atualizar seus dotfiles, basta executar o script setup.sh novamente. Ele irá sobrescrever os arquivos existentes com a versão mais recente do repositório.

### Observações

* Este projeto foi desenvolvido para meu uso pessoal, mas sinta-se à vontade para adaptá-lo às suas necessidades.
* Certifique-se de entender o que os scripts de instalação estão fazendo antes de executá-los, pois eles podem modificar seu sistema.
* Em caso de dúvidas, problemas ou sugestões, abra uma issue no repositório.
