dotfiles for OSX
===

# How to use

1. Create symbolic links for `~/.bashrc` and `~/.tmux.conf`:
    ```sh
    ln -s bashrc ~/.bashrc
    ln -s tmux.conf ~/.tmux.conf
    ```

1. Run `install.sh`

## iTerm

- [Snazzy](https://github.com/sindresorhus/iterm2-snazzy)
- Import general settings

## tmux

- `.tmux.conf`: inspired by http://www.hamvocke.com/blog/a-guide-to-customizing-your-tmux-conf/
- [Auto-start tmux in iTerm2](https://gist.github.com/royling/f32fe362a4e0a089b95277522acc9ec7)
  ```sh
  # Add the below line into: Prefs->Profiles->General->Command/Send text at start
  tmux new -A -s foo -n default
  ```

## Starship: customize shell prompt

- Copy `starship.toml` to `~/.config/`

## VIM

- See [dotvim](https://github.com/royling/dotvim)

## ZSH (optional)

- Install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
- Use customized theme (_ys.zsh-theme_ in this repo)
