#!bin/bash -v

# Removes Login Message
touch ~/.hushlogin

# Configure Git
git config --global user.name "thisisshi"
git config --global user.email "theli@outlook.com"

git config --global core.editor vim

git config --list

# Generate RSA Key
mkdir ~/.ssh
ssh-keygen -t rsa -b 4096 -C "theli@outlook.com" -f ~/.ssh/rsa.key -N ""

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/rsa.key

pbcopy <~/.ssh/rsa.key.pub

echo "Remember to copy this to GITHUB!!!"

# Change shell to fish
# Make sure you disable csrutil in recovery first for macOS

fish_path=`which fish`
echo $fish_path >> /etc/shells
chsh -s $fish_path 

# Get powerline fonts for agnoster
# Remember to go into your terminal emulator to set the font to a powerline
# compatible font!
#
# i.e.: 12pt Mesio LG L DZ Regular for Powerline
mkdir ~/Dev
cd ~/Dev
git clone https://github.com/powerline/fonts.git

cd fonts
sh install.sh

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Copy .vimrc to ~/.vimrc
cp .vimrc ~/.vimrc

cp config.fish ~/.config/fish/config.fish

