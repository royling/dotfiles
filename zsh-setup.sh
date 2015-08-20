#!/usr/bin/env bash

abs_path=`cd $(readlink "$0" | xargs dirname); pwd -P`
ln $abs_path/.zshrc ~/.zshrc
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh && \
    ln $abs_path/ys.zsh-theme ~/.oh-my-zsh/themes/ys-tweaked.zsh-theme

