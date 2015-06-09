export LANG=ja_JP.UTF-8
export LC_ALL=ja_JP.UTF-8
alias vi='vim'

# ssh接続した時にbashになる問題を解決
if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi
