#!/bin/bash

##############################
# bootstrap.sh - Installs a new development environment
##############################



# update and install apt packages
apt-get update
apt-get -y install git vim tmux guake # basic requirements without compiled packages

# Setup git for commits on this pc
git config --global user.name "Ryan Worthy"
git config --global user.email notWorthy@codejokers.com
git config --global core.editor vim
git config --global merge.tool vimdiff

# Download vundle and create vim directories
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# Create projects directory
mkdir -p ~/projects

# Download dotfiles and install them.
git clone https://github.com/notWorthy/dotfiles.git ~/.dotfiles
cd ~/.dotfiles

chmod +x install_dotfiles.sh
sh install_dotfiles.sh

#TODO add scripts for installing python and other language tools

chown -R $SUDO_UID:$SUDO_GID ~/.vim ~/projects ~/.dotfiles
