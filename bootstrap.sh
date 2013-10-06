#!/bin/bash

##############################
# bootstrap.sh - Installs a new development environment
##############################

# update and install apt packages
apt-get update
apt-get install git vim tmux guake # basic requirements without compiled packages

# Setup git for commits on this pc
git config --global user.name "Ryan Worthy"
git config --global user.email notWorthy@codejokers.com
git config --global core.editor vim
git config --global merge.tool vimdiff

# Download vundle and create vim directories
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# Create projects directory
mkdir -p ~/projects

# Make sure install_dotfiles is executable and run
chmod +x install_dotfiles.sh
sh install_dotfiles.sh

#TODO add scripts for installing python and other language tools

