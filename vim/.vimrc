"load pathogen
execute pathogen#infect()

"turn on syntax highlighting
syntax on

"switch on filetype detection, with automatic indenting and settings
filetype plugin indent on

" iterm2 settings
set t_Co=256

" Set tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Set default color scheme
colorscheme lucius
set background=dark

" Set syntastic to automatically load errors into location list on save
" https://github.com/scrooloose/syntastic/issues/498
" otherwise it will only load it on running :Errors
let g:syntastic_always_populate_loc_list=1

" Set syntax checkers for syntastic plugin
let g:syntastic_python_checkers=['pyflakes']

