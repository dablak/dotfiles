#!/bin/bash

cd $HOME

# Backup your dotfiles
mv .bashrc .bashrc_bckp  2>/dev/null
mv .bash_aliases .bash_aliases_bckp 2>/dev/null 
mv .vim .vim_bckp  2>/dev/null
mv .vimrc .vimrc_bckp 2>/dev/null
mv .screenrc .screenrc_bckp 2>/dev/null
mv .inputrc .inputrc_bckp 2>/dev/null


# Create symbolic links
ln -ns dotfiles/bash/.bashrc .bashrc 
ln -ns dotfiles/bash/.bash_aliases .bash_aliases 
ln -ns dotfiles/bash/.inputrc .inputrc
ln -ns dotfiles/vim .vim 
ln -ns dotfiles/vim/.vimrc .vimrc
ln -ns dotfiles/.screenrc .screenrc
