#!/usr/local/bin/fish
source ~/.config/fish/config.fish

# Install oh-my-fish
curl -L http://get.oh-my.fish | fish

omf update
omf install powerline
omf install agnoster
omf install bobthefish

