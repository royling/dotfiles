#!/usr/bin/env bash

# TODO does this work if the dir is a symbolic link?
cwd_abs_path=`cd $(dirname $0); pwd`

if [[ -e "~/.vimrc" ]]; then
    # backup .vimrc if it exists
    mv ~/.vimrc ~/.vimrc.orig
fi
# link to .vimrc in this dir
ln -s $cwd_abs_path/.vimrc ~/.vimrc

# install pathogen
if [[ ! -d "~/.vim" || ! -d "~/.vim/autoload" ]]; then
    mkdir -p ~/.vim/autoload ~/.vim/bundle
fi
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# install plugins
cd ~/.vim/bundle
#git clone https://github.com/altercation/vim-colors-solarized
git clone https://github.com/chriskempson/base16-vim
git clone https://github.com/kien/ctrlp.vim
#git clone https://github.com/scrooloose/nerdtree
git clone https://github.com/bling/vim-airline
git clone https://github.com/tpope/vim-surround
#git clone https://github.com/scrooloose/syntastic
git clone https://github.com/airblade/vim-gitgutter
git clone https://github.com/terryma/vim-multiple-cursors

# anything else?
