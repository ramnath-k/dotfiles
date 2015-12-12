#!/bin/bash -e
cd ~/.vim
git submodule init
git submodule add https://github.com/kien/ctrlp.vim.git bundle/
git commit -m 'Added ctrlp-vim'
git submodule add https://github.com/scrooloose/nerdtree.git bundle/
git commit -m 'Added nerdtree'
git submodule add https://github.com/scrooloose/syntastic.git bundle/
git commit -m 'Added syntastic'
git submodule add https://github.com/tpope/vim-bundler.git bundle/
git commit -m 'Added vim-bundler'
git submodule add https://github.com/tpope/vim-endwise.git bundle/
git commit -m 'Added vim-endwise'
git submodule add https://github.com/tpope/vim-fugitive.git bundle/
git commit -m 'Added vim-fugitive'
git submodule add https://github.com/tpope/vim-surround.git bundle/
git commit -m 'Added vim-surround'
git submodule add https://github.com/tpope/vim-unimpaired.git bundle/
git commit -m 'Added vim-unimpaired'
#git submodule add https://github.com/kchmck/vim-coffee-script.git bundle/
#git commit -m 'Added vim-coffee-script'
#git submodule add https://github.com/tpope/vim-rails.git bundle/
#git commit -m 'Added vim-rails'
#git submodule add https://github.com/vim-ruby/vim-ruby.git bundle/
#git commit -m 'Added vim-ruby'

# on a new system
# cd ~/.vim
# git submodule init
# git submodule update

