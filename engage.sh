#!/bin/bash

echo "mac or linux?"

read VAR1


if [[ "$VAR1" == "mac" ]]
then

    cd
    which -s brew
    if [[ $? != 0 ]] ; then
        # Install Homebrew
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    else
        brew update
    fi

    brew install zsh zsh-completions bpytop

    wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

    curl -L git.io/antigen > antigen.zsh

    brew install tree exa bat neofetch tldr
    
    cp -R .aliases .antigenrc .hushlogin .local .zshrc /Users/$USER/
    
    exit



elif [[ "$VAR1" == "linux" ]]
then


    
    sudo apt install zsh bat xsel tree neofetch autojump tldr vim wget git bpytop
    chsh -s /bin/zsh
    wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
    curl -L git.io/antigen > ~/antigen.zsh
fi

cp -R .aliases .antigenrc .hushlogin .local .zshrc /home/$USER/

exec su -l $USER

!history 1

source /home/$USER/.zshrc
