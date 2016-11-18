filetype plugin indent off
if has('vim_starting')
	set nocompatible
	" neobundleをインストールしていない場合は自動インストールする
	if !isdirectory(expand("~/.vim/bundle/neobundle.vim/"))
		echo "install neobundle..."
		" neobundleのクローン
		:call system("git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim")
	endif
	" molokaiをインストールしていない場合は自動インストールする
	if !isdirectory(expand("~/.vim/colors/"))
		echo "install molokai..."
		:call system("git clone https://github.com/tomasr/molokai ~/.vim/molokai")
		:call system("mkdir ~/.vim/colors/")
		:call system("mv ~/.vim/molokai/colors/molokai.vim ~/.vim/colors/")
		:call system("rm -rf ~/.vim/molokai")
	endif
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" バンドル 
NeoBundle 'Shougo/unite.vim'
" ステータスバーのライン
NeoBundle 'Shougo/neomru.vim'
"NeoBundle 'Shougo/vimfiler'
NeoBundle 'bling/vim-airline'
" nerdtree
NeoBundle 'scrooloose/nerdtree'
" カラースキーマ
NeoBundle 'tomasr/molokai'
" Uniteのカラースキーマ
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'lambdalisue/unite-grep-vcs'

" 非同期処理を行ってくれる
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/neocomplete'

" 補完
" NeoBundle 'Shougo/neocomplcache'
" NeoBundle 'Townk/vim-autoclose'		" 括弧を自動で閉じてくれる

" YouCompleteMe
" NeoBundle "Valloric/YouCompleteMe"

NeoBundle 'osyo-manga/vim-marching'

" vimtagを追加
NeoBundle 'szw/vim-tags'
NeoBundle "vim-scripts/taglist.vim"
NeoBundle 'soramugi/auto-ctags.vim'

" Vimとtmuxのキーバインドを同じようにする
NeoBundle 'christoomey/vim-tmux-navigator'

" C++11用シンタックスハイライト
NeoBundleLazy 'vim-jp/cpp-vim', {'autoload' : {'filetypes' : 'cpp'} }

NeoBundle "majutsushi/tagbar", { "autoload": { "commands": ["TagbarToggle"] } }
if ! empty(neobundle#get("tagbar")) " Width default 40
	let g:tagbar_width = 30 " Map for toggle
	nn <silent> <leader>t :TagbarToggle<CR>
endif

NeoBundleFetch 'Shougo/neobundle.vim'

" vimrcに記述されたプラグインでインストールされてないものがないかチェックする
NeoBundleCheck

call neobundle#end()


" ===== 表示 ======
" タイトルを表示しない
set notitle
" タイトルを飛ばす
set shortmess+=I
" ステータスラインを表示
set laststatus=2
" カーソル行のライン
set cursorline

" 入力中のコマンドを表示する
set showcmd
" 不可視文字を表示する
set list
" 行末の半角スペースとタブを表示する
set listchars=trail:~
set listchars=tab:>-,extends:>,precedes:<,nbsp:%
" バックスペースを使えるようにする
set backspace=indent,eol,start
" スワップファイルを使わないようにする
set noswapfile
" バックアップファイルを使わないようにする
set nobackup
" モードラインを有効にしない
set nomodeline
" 編集中でも他のファイルを開くことが出来る
set hidden
" 更新時自動読み込み
set autoread
" 保存されていないファイルがあるとき保存の確認を行うか
set confirm
" 行数を表示する
set number
" 改行時に自動でインデントを設定
set smartindent
" スクロールする時に上下が見えるようにする
set scrolloff=8
" スクロールする時に左右が見えるようにする
set sidescrolloff=16
" タブの設定
set tabstop=4
set softtabstop=4
" instertモードで自動的にIMEがONになるのを防ぐ
set iminsert=0
" カーソルの行数とか場所を表示する
set ruler

" 右端で折り返すかどうか
set textwidth=0
set formatoptions=q

" クリップボードを使えるようにする
set clipboard+=unnamed,autoselect
" ターミナル接続を高速にする
set ttyfast

" ===== 検索 =====
" 検索結果をハイライト表示
set hlsearch
" 検索ワードの最初の文字を入力した時点で検索を開始 
set incsearch
" 検索で大文字小文字を区別しない
set ignorecase
" 検索時にファイルの最後まで行ったら最初に戻る
set wrapscan
" 検索時にファイルの最後まで行ったら最初に戻る
set gdefault
" 検索で大文字小文字両方が入力されたら区別して検索
set smartcase
" コマンド補完を強化
set wildmenu
" コマンド補完を開始するキー
set wildchar=<tab>
" コマンド・検索パターンの履歴数
set history=1000
" 補完に辞書ファイルを使用
set complete+=k
" マッチするところまで自動補完
set wildmode=list

" 日本語入力
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set guifont=Consolas:h12:cSHIFTJIS

" ====== カラースキーマ =====
syntax on
colorscheme molokai
set t_Co=256

" アンダーラインを引く
highlight CursorLine cterm=underline 
" 背景をターミナルと同じにする
highlight Normal ctermbg=black ctermfg=grey

" ショートカットキー
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

" 半ページ移動
nnoremap J <C-D>
nnoremap K <C-U>

" 先頭文字行末文字に移動
nnoremap H ^
nnoremap L $

" 行の末尾，先頭で挿入モード開始
nnoremap A I
nnoremap F A

" 単語移動関連

" タブ作成・移動など
noremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sn gt
nnoremap sb gT
nnoremap st :<C-u>tabnew<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap s> :<C-w>><CR>
nnoremap s< :<C-w><<CR>

" 強制的にコマンドモードにするショートカット
inoremap jj <Esc>
inoremap kk <Esc>

" EXモードの無効化
nnoremap Q <Nop>

" Esc連打で検索のハイライトを消去
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" Terminalの背景色とTerminalで使うvimの背景色を同じにする
if !has('gui_running')
	augroup seiya
		autocmd!
		autocmd VimEnter,ColorScheme * highlight Normal ctermbg=none
		autocmd VimEnter,ColorScheme * highlight LineNr ctermbg=none
		autocmd VimEnter,ColorScheme * highlight SignColumn ctermbg=none
		autocmd VimEnter,ColorScheme * highlight VertSplit ctermbg=none
		autocmd VimEnter,ColorScheme * highlight NonText ctermbg=none
	augroup END
endif
