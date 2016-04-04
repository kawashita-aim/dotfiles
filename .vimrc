filetype plugin indent off
if has('vim_starting')
	set nocompatible
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

" タブ補完
" NeoBundle 'Shougo/neocomplcache'
" NeoBundle 'Townk/vim-autoclose'		" 括弧を自動で閉じてくれる

NeoBundle 'osyo-manga/vim-marching'

" vimtagを追加
NeoBundle 'szw/vim-tags'
NeoBundle "vim-scripts/taglist.vim"
NeoBundle 'soramugi/auto-ctags.vim'

" Vimとtmuxのキーバインドを同じようにする
NeoBundle 'christoomey/vim-tmux-navigator'

" C++11用シンタックスハイライト
NeoBundleLazy 'vim-jp/cpp-vim', {
	\ 'autoload' : {'filetypes' : 'cpp'}
	\ }

NeoBundle "majutsushi/tagbar", { 
	\ "autoload": { "commands": ["TagbarToggle"] } }
if ! empty(neobundle#get("tagbar"))
	" Width default 40
	let g:tagbar_width = 30
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

" NERDTreeのショートカット
nnoremap <silent><C-e> :NERDTreeToggle<CR> 
" Tagtoggleのショートカット
nnoremap <silent><C-w> :TagbarToggle<CR>
" ctagsのショートカット

" 強制的にコマンドモードにするショートカット
inoremap jj <Esc>
inoremap kk <Esc>

" EXモードの無効化
nnoremap Q <Nop>

" Esc連打で検索のハイライトを消去
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" vimでマウスを使えるようにする
"if has('mouse')
"  set mouse=a
"  set ttymouse=xterm2
"endif

" =============================================
" neocomplete の設定
" =============================================
let g:acp_enableAtStartup = 0
" NeoCompleteを有効にする
let g:neocomplete#enable_at_startup = 1
" Smart Case有効化。大文字が入力されるまで大文字小文字の区別を無視する
let g:neocomplete#enable_smart_case = 1
" 補完が自動で開始される文字数
let g:neocomplete#sources#syntax#min_keyword_length = 3
" neocompleteを自動的にロックするバッファ名のパターン
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" _(アンダーバー)区切りの補完を有効化
let g:neocomplete#enable_underbar_completion = 1
" 補完候補の一番先頭を選択状態にする
let g:neocomplete#enable_auto_select = 1

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" 変換候補が出ていたら確定、なければ改行
inoremap <expr><CR>   pumvisible() ? "\<C-n>" . neocomplete#close_popup()  : "<CR>"

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplete#enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplete#enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" 入力モードで開始する
let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable=1
" ファイル履歴を200まで保存
let g:unite_source_file_mru_limit=200
" file_mruの表示フォーマット
let g:unite_source_file_mru_filename_format = ''
"let g:unite_enable_split_vertically = 1
" ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<C
" 最近使用したファイル一覧
nnoremap <Space>um :<C-u>Unite file_mru<CR>
nnoremap <Space>uy :<C-u>Unite file<CR>
" grep
nnoremap <Space>ug :<C-u>Unite grep/git:. -buffer-name=search-buffer<CR>
" ウィンドウを分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-s> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-s> unite#do_action('split')
" " ウィンドウを縦に分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-v> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-v> unite#do_action('vsplit')

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
"let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

" marching.vimの設定（補完）
" 補完ではなくて同期処理で補完する
let g:marching_backend = "sync_clang_command"

" オプションの設定
" これはclangのコマンドに渡される
let g:marching_clang_command_option="-std=c++1y"

" neocomplete.vim と併用して使用する場合
" neocomplete.vim を使用すれば自動補完になる
let g:marching_enable_neocomplete = 1

if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.cpp =
    \ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'

" Ctags関連のショートカット
nnoremap <C-h> :vsp<CR> :exe("tjump ".expand('<cword>'))<CR>
nnoremap <C-k> :split<CR> :exe("tjump ".expand('<cword>'))<CR>
" Ctagsの設定
set tags=<tags_path>
