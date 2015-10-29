#!/usr/bin/env bash

abs_path=`cd $(readlink "$0" | xargs dirname); pwd -P`

# backup .vimrc if it exists
#if [[ -e "~/.vimrc" ]]; then
mv ~/.vimrc ~/.vimrc.orig
#fi
ln -s $abs_path/.vimrc ~/.vimrc

# install pathogen
#if [[ ! -d "~/.vim" || ! -d "~/.vim/autoload" ]]; then
mkdir -p ~/.vim/autoload ~/.vim/bundle
#fi
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# install vim plugins
(cd ~/.vim/bundle
#git clone https://github.com/altercation/vim-colors-solarized
git clone https://github.com/chriskempson/base16-vim
git clone https://github.com/kien/ctrlp.vim
git clone https://github.com/scrooloose/nerdtree
git clone https://github.com/bling/vim-airline
git clone https://github.com/tpope/vim-surround
git clone https://github.com/airblade/vim-gitgutter
#git clone https://github.com/terryma/vim-multiple-cursors
)

#if [[ -e "~/.zshrc" ]]; then
mv ~/.zshrc ~/.zshrc.orig
#fi
ln $abs_path/.zshrc ~/.zshrc
# install oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh && \
ln $abs_path/ys.zsh-theme ~/.oh-my-zsh/themes/ys-tweaked.zsh-theme

# anything else?
