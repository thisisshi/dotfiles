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

function vba $argv
  vbam -c ~/.vbam/vbam.cfg $argv
end
