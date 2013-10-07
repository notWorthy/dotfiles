#################################
# bootstrap_config.sh - make any configuration changes necessary as the user.
#################################


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
