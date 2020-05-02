dotfiles for OSX
===

# HOWTOs

Create symbolic links for `~/.zshrc`, `~/.bashrc` or `~/.bash_profile` and `~/.tmux.conf`

## ZSH (optional)

- Install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
- Use customized theme (_ys.zsh-theme_ in this repo)

## VIM

- See [dotvim](https://github.com/royling/dotvim)

## iTerm

- ~~[Dracula theme](https://draculatheme.com/iterm/)~~
- [Snazzy](https://github.com/sindresorhus/iterm2-snazzy)
- Import general settings

## tmux

- `.tmux.conf`: inspired by http://www.hamvocke.com/blog/a-guide-to-customizing-your-tmux-conf/
- [Auto-start tmux in iTerm2](https://gist.github.com/royling/f32fe362a4e0a089b95277522acc9ec7)

## Starship: customize shell prompt

- `brew install starship`
- Copy `starship.toml` to `~/.config/`

## Git
- Bash Autocompletion
```sh
wget -qO ~/.git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
echo -e '\n. ~/.git-completion.bash' >> ~/.bashrc
```

- Easy setup with [GitAlias](https://github.com/GitAlias/gitalias)
```sh
wget -qO ~/.gitalias https://raw.githubusercontent.com/GitAlias/gitalias/master/gitalias.txt
git config --global include.path ~/.gitalias
```

