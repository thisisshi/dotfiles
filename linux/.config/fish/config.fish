# Start X at login
if status is-login
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        exec startx -- -keeptty
    end
end

set -gx OP_SESSION_my 4kIXaYcru_gr4nq76e27lTMxuMp1TTQQRbPlTPyp02g

function fish_greeting
end

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

function brightness --description "set brightness"
  command xrandr --output eDP-1 --brightness $argv
end

alias wifi="sudo nmtui"
