export LANG=ja_JP.UTF-8
export LC_ALL=ja_JP.UTF-8

# cygwin開いたときにbashrcを読み込む
if [ -f $HOME/.bashrc ]; then
	source ~/.bashrc
fi

# ssh接続した時にbashになる問題を解決
if [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
  if [ -f ~/.bashrc ]; then
  	source ~/.bashrc
  fi
fi

# TMUX Settings
if [ -z $TMUX ]; then
	if $(tmux has-session); then
		tmux
	else
		tmux
	fi
fi
