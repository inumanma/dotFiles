set nocompatible            " 必ず最初に書く
set background=dark

syntax on

"neocomplacache
let g:neocomplcache_enable_at_startup = 1
let g:NeoComplCache_EnableUnderbarCompletion=1

"popup color
hi Pmenu ctermbg=blue
hi PmenuSel ctermbg=darkmagenta
hi PmenuSbar ctermbg=2
hi PmenuThumb ctermbg=4

colorscheme torte          " カラースキーム

" タブ周り
" tabstopはTab文字を画面上で何文字分に展開するか
" shiftwidthはcindentやautoindent時に挿入されるインデントの幅
" softtabstopはTabキー押し下げ時の挿入される空白の量，0の場合はtabstopと同じ，BSにも影響する
set tabstop=4 shiftwidth=4 softtabstop=0
set autoindent smartindent " 自動インデント，スマートインデント

" 入力補助
set backspace=indent,eol,start " バックスペースでなんでも消せるように
set formatoptions+=m           " 整形オプション，マルチバイト系を追加

" 検索関連
set wrapscan   " 最後まで検索したら先頭へ戻る
set ignorecase " 大文字小文字無視
set smartcase  " 大文字ではじめたら大文字小文字無視しない
set incsearch  " インクリメンタルサーチ
set hlsearch   " 検索文字をハイライト

" ファイル関連
set nobackup   " バックアップ取らない
set autoread   " 他で書き換えられたら自動で読み直す
set noswapfile " スワップファイル作らない
set hidden     " 編集中でも他のファイルを開けるようにする

"表示関連
set showmatch         " 括弧の対応をハイライト
set showcmd           " 入力中のコマンドを表示
set number            " 行番号表示
set wrap              " 画面幅で折り返す
set notitle           " タイトル書き換えない
set scrolloff=5       " 行送り


" エンコーディング関連
set ffs=unix,dos,mac " 改行文字

" 文字コードの自動認識
" 適当な文字コード判別
set termencoding=utf-8
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,cp932,euc-jp
" UTF-8の□や○でカーソル位置がずれないようにする
" Terminal.appはどっちにしてもダメ，PrivatePortsのiTermでやる
set ambiwidth=double

" ==================== キーマップ ==================== "
" 表示行単位で移動
noremap j gj
noremap k gk
vnoremap j gj
vnoremap k gk

" マウス操作を有効にする
" iTermのみ，Terminal.appでは無効
if has('mac')
    set mouse=a
    set ttymouse=xterm2
endif

" プラグインの管理を行う vundleプラグインの設定
filetype off

" set rtp+=~/.vim/bundle/vundle/
set rtp+=~/.vim/vundle.git
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'unite.vim'
Bundle 'surround.vim'
Bundle 'tComment'
Bundle 'quickrun.vim'
Bundle 'thinca/vim-ref'
Bundle 'scrooloose/nerdtree'

filetype plugin indent on
