set --erase fish_greeting

function cd --description "auto-ls for each cd"
  if [ -n $argv[1] ]
	  builtin cd $argv[1]
  else
    builtin cd ~
  end
  la
end

function ls --description "better ls"
	command ls -Glha
end

alias brewup="brew update; brew cask update; brew upgrade --all; brew cleanup; brew cask cleanup"

