#!/usr/bin/env bash
ln $PWD/.zshrc ~/.zshrc
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh && \
    ln $PWD/ys.zsh-theme ~/.oh-my-zsh/themes/ys-tweaked.zsh-theme

