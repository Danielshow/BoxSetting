#!/bin/bash


## copy files back to the normal files

# get backup files
VIMRC_OLD=~/.vimrc.old
ZSHRC_OLD=~/.zshrc.old
TMUX_CONF_OLD=~/.tmux.conf.old

VIMRC=~/.vimrc
ZSHRC=~/.zshrc
TMUX_CONF=~/.tmux.conf

# if vimrcold exist copy to vimrc, if not rm vimrc
if [ -f "$VIMRC_OLD" ]; then
  cp $VIMRC_OLD $VIMRC
else
  rm -rf $VIMRC
fi

# if zshrc_old exists, copy to zshrc
if [ -f "$ZSHRC_OLD" ]; then
  cp $ZSHRC_OLD $ZSHRC
else
  rm -rf $ZSHRC
fi


# if tmux conf exists
if [ -f "$TMUX_CONF_OLD" ]; then
  cp $TMUX_CONF_OLD $TMUX_CONF
else
  rm -rf $TMUX_CONF
fi

# uninstall spaceship
npm uninstall -g spaceship-prompt


echo Thank you
