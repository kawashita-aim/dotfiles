set nocompatible
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
	NeoBundleFetch 'Shougo/neobundle.vim'
call neobundle#end()

" バンドル
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'bling/vim-airline'
" nerdtree
NeoBundle 'scrooloose/nerdtree'

NeoBundle 'tomasr/molokai'
NeoBundle 'ujihisa/unite-colorscheme'

" ===== 表示設定 ======
" 使ってくれてありがとう
set notitle
" :introの画面を出さないようにする
set shortmess+=I
" statuslineを常に表示
set laststatus=2
" カーソル行の背景色を変える
set cursorline
" コマンドステータス行に表示
set showcmd
" 不可視文字を表示する
set list
" 行末の半角スペース,タブを表示する
set listchars=trail:~
set listchars=tab:>-,extends:>,precedes:<,nbsp:%
" バックスペースを使えるようにする
set backspace=indent,eol,start
" スワップファイルを作らない
set noswapfile
" バックアップを取らない
set nobackup
" モードラインを無効にする
set nomodeline
" 保存されていないファイルがあるときでも別のファイルを開ける
set hidden
" 外部でファイルに変更がされた場合は読みなおす
set autoread
" 保存されていないファイルがあるときは終了前に確認する
set confirm
" 行数を表示する
set number
" タブの設定
set tabstop=4
set softtabstop=4

" カーソルの位置を把握
set ruler

" 途中で改行をしないようにする
set textwidth=0
set formatoptions=q

" クリップボードを有効にする
set clipboard=unnamed,autoselect
" ターミナル接続を高速にする
set ttyfast

" ===== 検索の設定 =====
" 検索文字をハイライトする
set hlsearch
" インクリメンタルサーチ
set incsearch
" 大文字と小文字を区別しない
set ignorecase
" 最後尾まで検索を終えたら次の検索で先頭に戻る
set wrapscan
" 置換の時gオプションをデフォルトで有効にする
set gdefault
" 検索で大文字小文字両方が入力されたら区別して検索
set smartcase
" エンコーディング
set encoding=cp932
set fileencoding=cp932
set fileencodings=utf-8
set guifont=Consolas:h12:cSHIFTJIS

" ====== 色の設定 =====
syntax on
colorscheme molokai
set t_Co=256

" ショートカット
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

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
" Unite使うことになったら調べる
"nnoremap sb :<C-u>Unite buffer_tab -buffer-name=file<CR>
"nnoremap sB :<C-u>Unite buffer -buffer-name=file<CR>
nnoremap <silent><C-e> :NERDTreeToggle<CR>
inoremap jj <Esc>
" Escの二回押しでハイライト消去
nmap <Esc><Esc> :nohlsearch<CR><Esc>
" インサートモードを抜けると自動的にIMEをオフにする
" inoremap <silent> <unique> <Esc> <Esc>:set imsearch=0 iminsert=0<CR>

" ターミナルでマウスを有効にする
if has('mouse')
  set mouse=a
  set ttymouse=xterm2
endif
