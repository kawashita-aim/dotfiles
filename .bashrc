unset SSH_ASKPASS

# Ctrl + S で固まるのを修正
stty stop undef

if [ -f /etc/bashrc ]; then
	source /etc/bashrc
fi

alias grep='grep --color'
