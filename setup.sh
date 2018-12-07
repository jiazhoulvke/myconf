#!/bin/sh
mv ~/.bashrc ~/.bashrc.bak
mv ~/.zshrc ~/.zshrc.bak
mv ~/.Xdefaults ~/.Xdefaults.bak
mv ~/.Xresources ~/.Xresources.bak
mv ~/.screenrc ~/.screenrc.bak
mv ~/.tmux.conf ~/.tmux.conf.bak
ln -s ~/.myconf/bashrc ~/.bashrc
ln -s ~/.myconf/zshrc ~/.zshrc
ln -s ~/.myconf/init.fish ~/.config/omf/init.fish
ln -s ~/.myconf/Xdefaults ~/.Xdefaults
ln -s ~/.myconf/Xdefaults ~/.Xresources
ln -s ~/.myconf/urxvt/ ~/.urxvt
ln -s ~/.myconf/screenrc ~/.screenrc
cp ~/.myconf/tmux.conf ~/.tmux.conf
mkdir ~/.fonts
cp ~/.myconf/*.ttf ~/.fonts/
