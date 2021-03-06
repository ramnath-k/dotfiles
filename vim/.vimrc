"load pathogen
execute pathogen#infect()

" enable matchit plugin for use with html files
" this allows pressing % to jump between matching html tags
source $VIMRUNTIME/macros/matchit.vim

"turn on syntax highlighting
syntax on

"switch on filetype detection, with automatic indenting and settings
filetype plugin indent on

" iterm2 settings
set t_Co=256

" Set tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2
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

" Set indentation
set smartindent
set autoindent

" Search
set hlsearch
set incsearch
" ignore case in search patterns
set ignorecase 

" Blocks
set showmatch " briefly jummp to matching bracket if insert one

" print the line number in front of each line
set number

" Ctrl-P bindings
let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd='CtrlP'
let g:ctrl_working_path_mode='ra'

" folding
set foldmethod=syntax
set foldnestmax=2

" shortcuts
:nmap \e :NERDTreeToggle<CR>

" ejs templates
au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.ejs set foldmethod=indent
au BufNewFile,BufRead *.ejs set foldnestmax=10

