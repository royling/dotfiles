#!/usr/bin/env bash

cwd_abs_path=`cd $(dirname $0); pwd`
ln $cwd_abs_path/.zshrc ~/.zshrc
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh && \
    ln $cwd_abs_path/ys.zsh-theme ~/.oh-my-zsh/themes/ys-tweaked.zsh-theme

