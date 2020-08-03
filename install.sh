#!/bin/bash

# Create .bash_profile/.bashrc
if [ ! -e ~/.bash_profile ]; then
  if [ ! -f ~/.bashrc ]; then
    cat <<EOF > ~/.bashrc
alias ls='ls -aGFh'
alias ll='ls -l'
alias cls='clear'
alias vi='vim'
EOF
  fi
  ln -s ~/.bashrc ~/.bash_profile
fi

# Xcode command line dev tools
xcode-select --install

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
echo 'export HOMEBREW_NO_ANALYTICS=1' >> ~/.bashrc

brew install wget tree trash vim tmux gnu-getopt

# FiraCode font
brew tap homebrew/cask-fonts
brew cask install font-fira-code


# Git
brew install git
wget -qO ~/.git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
echo 'source ~/.git-completion.bash' >> ~/.bashrc

wget -qO ~/.gitalias https://raw.githubusercontent.com/GitAlias/gitalias/master/gitalias.txt
git config --global include.path ~/.gitalias
git config --global core.editor vim

# Install starship (cross-shell prompt)
brew install starship
echo 'eval "$(starship init bash)"' >> ~/.bashrc


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
#pyenv init 2>&1 | tee -a ~/.bashrc  # load pyenv automatically
pyenv install 3.6.10


# Java
brew tap adoptopenjdk/openjdk
brew cask install adoptopenjdk8


# Deno
curl -fsSL https://deno.land/x/install/install.sh | sh
deno completions bash > $HOME/deno.bash
echo 'source $HOME/deno.bash' >> ~/.bashrc
