#!/bin/bash

PATH_DIR="$HOME/.local/bin"
mkdir -p "$PATH_DIR"
curl https://cht.sh/:cht.sh > "$PATH_DIR/cht.sh"
chmod +x "$PATH_DIR/cht.sh"

    
    sudo apt install zsh bat xsel tree neofetch autojump tldr vim wget git bpytop exa htop

    cd
    wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
    curl -L git.io/antigen > ~/.antigen.zsh

cp -R .aliases .antigenrc .hushlogin .local .zshrc .vimrc /home/$USER/ .choices
    chsh -s /bin/zsh
exec su -l $USER

    


!history 1

source /home/$USER/.zshrc
