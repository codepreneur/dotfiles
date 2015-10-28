set nocompatible
filetype off

" Vundle {{{

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'mattn/emmet-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'rizzatti/dash.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'etnadji/vim-epub'
Plugin 'whatyouhide/vim-gotham'
Plugin 'Raimondi/delimitMate'

call vundle#end()

" }}}

" General settings {{{

let mapleader = ","
syntax enable
filetype indent on 
filetype plugin on 
set background=dark
colorscheme hybrid_material

set t_Co=256
set autoindent
set backspace=indent,eol,start
" set colorcolumn=80
set cursorline
set encoding=utf-8
set fileencoding=utf-8
set gdefault

set guioptions-=Be
set guioptions=aAc
set hlsearch
set ignorecase
set incsearch
set list
set listchars=tab:▸\ ,eol:¬,nbsp:⋅,trail:•
set noswapfile
set number
set ruler
set shell=/bin/bash
set showmatch
set showcmd
set smartcase
set smartindent

set term=screen-256color
set ts=2 sts=2 sw=2 expandtab
set novisualbell

set winheight=5
set winminheight=5
set winwidth=84
set winheight=999

set laststatus=2

let g:user_emmet_leader_key=','
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
" }}}


" Autocommands {{{

".ru files are Ruby.
au BufRead,BufNewFile *.ru set filetype=ruby
au BufRead,BufNewFile [vV]agrantfile set filetype=ruby

" Markdown gets auto textwidth
au Bufread,BufNewFile *.md set filetype=markdown textwidth=79
au Bufread,BufNewFile *.markdown set textwidth=79

"To make Vim open EPUB like zip archives
au BufReadCmd *.epub call zip#Browse(expand("<amatch>"))

"To automatically indent html files
autocmd BufRead, BufWritePre *.html normal gg=G

" }}}
