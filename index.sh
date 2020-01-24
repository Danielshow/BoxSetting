#!/bin/bash

# create backup files
touch ~/.vimrc.old
touch ~/.zshrc.old
touch ~/.tmux.conf.old

# Copy existing files into old-zshrc & old-vimrc
cp ~/.vimrc ~/.vimrc.old >/dev/null 2>&1
cp ~/.zshrc ~/.zshrc.old >/dev/null 2>&1
cp ~/.tmux.conf ~/.tmux.conf.old >/dev/null 2>&1

# copy new files to replace existing files
VIMRC=~/.vimrc
ZSHRC=~/.zshrc
TMUX_CONF=~/.tmux.conf

if [-f "$VIMRC"]; then
  cp vimrc ~/.vimrc
else
  touch ~/.vimrc
  cp vimrc ~/.vimrc
fi
if [-f "$ZSHRC"]; then
  cp zshrc ~/.zshrc
else
  touch ~/.zshrc
  cp zshrc ~/.zshrc
fi
if [-f "$TMUX_CONF"]; then
  cp tmux.comf ~/.tmux.conf
else
  touch ~/.tmux.conf
  cp tmux.comf ~/.tmux.conf
fi

# get users system name and and sed -i s/old/new/g replace my name
if [$# -gt 0]; then
  # do something
  sed -i "s/danielshotonwa/$1/g" zshrc
  sed -i "s/danielshotonwa/$1/g" vimrc
else
  # do another thing
  echo You did not enter your system username
  exit 1
fi


## download Vundle as vim package manager
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

## Use spaceship prompt - A beautiful prompt
npm install -g spaceship-prompt
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
