
filetype plugin indent off

if has('vim_starting')
	set nocompatible
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" バンドル 
"NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'			" ステータスバーのラインとか
"NeoBundle 'Shougo/vimfiler'
NeoBundle 'bling/vim-airline'
NeoBundle 'scrooloose/nerdtree'			" nerdtree
NeoBundle 'tomasr/molokai'				" カラースキーマmolokai
NeoBundle 'ujihisa/unite-colorscheme'	" uniteのカラースキーマ
NeoBundle 'Shougo/vimproc'				" 非同期処理を行ってくれる
" NeoBundle 'Townk/vim-autoclose'		" 括弧を自動で閉じてくれる

NeoBundle 'szw/vim-tags'				" vimtagsを追加

NeoBundle "majutsushi/tagbar", { 
	\ "autoload": { "commands": ["TagbarToggle"] } }
if ! empty(neobundle#get("tagbar"))
	" Width default 40
	let g:tagbar_width = 20
	" Map for toggle
	nn <silent> <leader>t :TagbarToggle<CR>
endif

NeoBundleFetch 'Shougo/neobundle.vim'

call neobundle#end()

NeoBundleCheck

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
set wildmode=list:full

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

" NERDTreeのショートカット
nnoremap <silent><C-e> :NERDTreeToggle<CR>

" 強制的にコマンドモードにするショートカット
inoremap jj <Esc>
inoremap kk <Esc>

" EXモードの無効化
nnoremap Q <Nop>

" Esc連打で検索のハイライトを消去
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" vimでマウスを使えるようにする
if has('mouse')
  set mouse=a
  set ttymouse=xterm2
endif





