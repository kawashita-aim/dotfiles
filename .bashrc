# default のbashrcの更新
if [ -f /etc/bashrc ]; then
	source /etc/bashrc
fi

# Wをwにすることでファイルのフルパスをプロンプトに表示できる
# default プロンプト設定
#export PS1='\[\033[31m\][\h: \w]\n\$\[\033[30m\] '

source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash

# git管理されているフォルダではプロンプト表示を変更させる
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\033[36m\]\h\[\033[32m\]:\w\[\033[35m\]$(__git_ps1 [%s])\[\033[00m\]\n\$ '
export PATH=/Users/ka1kai/.gem/ruby/2.3.0/bin:$PATH

# GGtk-WARNING **: cannot open display
unset SSH_ASKPASS

# grep に色をつける
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# llとか使えるようにする
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# dfにメモリ表示
alias df='df -h'

# Ctrl + S で固まるのを修正
stty stop undef

# vimとviを同じ動きにする
alias vi='vim'

# VSCode
# Ubuntuでやる場合これしないと表示がおかしくなる
#alias code="code --disable-gpu"

# コマンド履歴をどれだけ残すか
export HISTSIZE=10000

export TMOUT=0

# 色リスト
# 文字色
#30	Black
#31	Red
#32	Green
#33	Yellow
#34	Blue
#35	Magenta
#36	Cyan
#37	White
