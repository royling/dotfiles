#!/bin/bash

# Create .bash_profile/.bashrc
if [[ ! -e ~/.bash_profile ]]; then
  if [[ ! -f ~/.bashrc ]]; then
    echo > ~/.bashrc
  fi
  ln -s ~/.bashrc ~/.bash_profile
fi


# Homebrew
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh

brew install vim
brew install tmux
brew install wget tree trash

# FiraCode font
brew tap homebrew/cask-fonts
brew cask install font-fira-code


# Git
wget -qO ~/.git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
echo -e '\n. ~/.git-completion.bash' >> ~/.bashrc

wget -qO ~/.gitalias https://raw.githubusercontent.com/GitAlias/gitalias/master/gitalias.txt
git config --global include.path ~/.gitalias
git config --global core.editor vim

# Install starship (cross-shell prompt)
brew install starship
echo -e '\neval "$(starship init bash)"' >> ~/.bashrc


# iTerm2
wget -qO ~/Downloads/iTerm.zip https://iterm2.com/downloads/stable/latest
unzip -q ~/Downloads/iTerm.zip -d /Applications/
rm ~/Downloads/iTerm.zip


# VS Code
wget -qO ~/Downloads/VSCode.zip https://go.microsoft.com/fwlink/?LinkID=620882
unzip -q ~/Downloads/VSCode.zip -d /Applications/
rm ~/Downloads/VSCode.zip


# rust-lang
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source ~/.cargo/env


# Node.js & Yarn
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
source ~/.bashrc

nvm install $(nvm ls-remote --lts | tail -1 | awk '{print $2}')  # install the latest LTS version

brew install yarn


# Python
brew install pyenv
pyenv install 3.6.10


# Java
brew tap adoptopenjdk/openjdk
brew cask install adoptopenjdk8

