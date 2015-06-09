set nocompatible
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
	NeoBundleFetch 'Shougo/neobundle.vim'
call neobundle#end()

" ネオバンドル
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'bling/vim-airline'
" nerdtree
NeoBundle 'scrooloose/nerdtree'

NeoBundle 'tomasr/molokai'
NeoBundle 'ujihisa/unite-colorscheme'

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
" タブの設定
set tabstop=4
set softtabstop=4

" カーソルの行数とか場所を表示する
set ruler

" 右端で折り返すかどうか
set textwidth=0
set formatoptions=q

" クリップボードを使えるようにする
set clipboard=unnamed,autoselect
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
" ?G???R?[?f?B???O
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set guifont=Consolas:h12:cSHIFTJIS

" ====== ?F?̐ݒ? =====
syntax on
colorscheme molokai
set t_Co=256

" ?V???[?g?J?b?g
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
" Unite?g?????ƂɂȂ��??璲?ׂ?
"nnoremap sb :<C-u>Unite buffer_tab -buffer-name=file<CR>
"nnoremap sB :<C-u>Unite buffer -buffer-name=file<CR>
nnoremap <silent><C-e> :NERDTreeToggle<CR>
inoremap jj <Esc>
" Esc?̓??񉟂??Ńn?C???C?g?��?
nmap <Esc><Esc> :nohlsearch<CR><Esc>
" ?C???T?[?g???[?h?𔲂????Ǝ????I??IME???I?t?ɂ???
" inoremap <silent> <unique> <Esc> <Esc>:set imsearch=0 iminsert=0<CR>

" ?^?[?~?i???Ń}?E?X???L???ɂ???
if has('mouse')
  set mouse=a
  set ttymouse=xterm2
endif
