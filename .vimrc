" -*-conf-*-
" vim options {{{

    set number
    "hide scroll"
    set guioptions-=r
    set guioptions-=L
    set guioptions-=b
    set showtabline=0
    syntax on
    let g:solarized_termcolors=256
    set background=dark
    colorscheme classic
    let mapleader='-'
    let maplocalleader='-'
    set nowrap
    set fileformat=unix
    set cindent
    set tabstop=4
    set shiftwidth=4
    set showmatch
    set scrolloff=18
    set laststatus=2
    set encoding=utf-8
    set fenc=utf-8
    set backspace=2
    set mouse=a
    set selection=exclusive
    set selectmode=mouse,key
    set matchtime=5
    set ignorecase
    set incsearch
    set hlsearch
    set expandtab
    set whichwrap+=<,>,h,l
    set autoread
    set cursorline
    set cursorcolumn
    set splitright
    set splitbelow
    set wildmenu
    set foldmethod=manual
    set viewoptions=folds
    set exrc
    autocmd BufWinLeave * if &modifiable && bufname('%') != '' | mkview | endif
    autocmd BufWinEnter * if filereadable(expand('%')) | silent loadview | endif

    set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png,*.ico,*.jpeg
    set wildignore+=*.pdf,*.psd
    set wildignore+=*.pyc,__pycache__/*
    set wildignore+=.git/*,build/*
    set wildignore+=node_modules/*,bower_components/*
    set wildignore+=*/node_modules/*,*/docs/*,*/dist/*

    set timeoutlen=1000
    set ttimeoutlen=1000

" }}}

" vim maps {{{

    nnoremap <C-X> :quitall<CR>

    " go to another panel in vim
    nnoremap <C-H> <C-W><C-H>
    nnoremap <C-J> <C-W><C-J>
    nnoremap <C-K> <C-W><C-K>
    nnoremap <C-L> <C-W><C-L>

    " search file, open with current panel / horizontal split / vertical split / new tab
    set wildignore+=*/node_modules/*,*/dist/*,*/docs/*
    nnoremap <LEADER>e :e **/*
    nnoremap <LEADER>t :tabnew **/*
    nnoremap <LEADER>T :tabnew 
    nnoremap <LEADER>v :vsplit **/*

    nnoremap <LEADER>p :r !pbpaste<CR>

    if executable('xclip')
        vnoremap <LEADER>c :!xclip -selection clipboard -f<CR>u
    endif

    nnoremap <leader>w :w<CR>

    " don't show the documentation
    map <F1> <NOP>
    imap <F1> <NOP>

" }}}

" vim plug settings {{{
    " Specify a directory for plugins
    " - For Neovim: stdpath('data') . '/plugged'
    " - Avoid using standard Vim directory names like 'plugin'
    call plug#begin('~/.vim/plugged')
    source $HOME/.vim/.vimrc.bundles
    call plug#end()

" }}}
