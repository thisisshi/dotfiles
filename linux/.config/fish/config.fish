function fish_greeting
end

function ls --description "better ls"
	command ls -Gahl --color
end

function vba $argv
  vbam -c ~/.vbam/vbam.cfg $argv
end

set -gx EDITOR /usr/bin/vim
set -gx VIRTUAL_ENV_DISABLE_PROMPT true
fish_vi_key_bindings
