#!/bin/bash -e
cd ~/.vim
git submodule init
git submodule add https://github.com/kien/ctrlp.vim.git bundle/ctrlp.vim
git commit -m 'Added ctrlp-vim'
git submodule add https://github.com/scrooloose/nerdtree.git bundle/nerdtree
git commit -m 'Added nerdtree'
git submodule add https://github.com/scrooloose/syntastic.git bundle/syntastic
git commit -m 'Added syntastic'
git submodule add https://github.com/tpope/vim-bundler.git bundle/vim-bundler
git commit -m 'Added vim-bundler'
git submodule add https://github.com/tpope/vim-endwise.git bundle/vim-endwise
git commit -m 'Added vim-endwise'
git submodule add https://github.com/tpope/vim-fugitive.git bundle/vim-fugitive
git commit -m 'Added vim-fugitive'
git submodule add https://github.com/tpope/vim-surround.git bundle/vim-surround
git commit -m 'Added vim-surround'
git submodule add https://github.com/tpope/vim-unimpaired.git bundle/vim-unimpaired
git commit -m 'Added vim-unimpaired'
git submodule add https://github.com/scrooloose/nerdcommenter.git bundle/nerdcommenter
git commit -m "Added nerdcommenter"
#git submodule add https://github.com/kchmck/vim-coffee-script.git bundle/vim-coffee-script
#git commit -m 'Added vim-coffee-script'
#git submodule add https://github.com/tpope/vim-rails.git bundle/vim-rails
#git commit -m 'Added vim-rails'
#git submodule add https://github.com/vim-ruby/vim-ruby.git bundle/vim-ruby
#git commit -m 'Added vim-ruby'

# on a new system
# cd ~/.vim
# git submodule init
# git submodule update

