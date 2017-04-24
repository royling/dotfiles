alias ls='ls -aGFh'
alias ll='ls -l'
alias cls='clear'
alias vi='vim'

git_repo() {
  git rev-parse --is-inside-work-tree &> /dev/null
  return $?
}

git_branch() {
  git branch --no-color 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

git_status() {
  git status --porcelain 2>/dev/null
}

prompt_cmd() {
  local ret_status="$?"

  local BLACK="\[\033[0;30m\]"
  local BLACKBOLD="\[\033[1;30m\]"
  local RED="\[\033[0;31m\]"
  local REDBOLD="\[\033[1;31m\]"
  local GREEN="\[\033[0;32m\]"
  local GREENBOLD="\[\033[1;32m\]"
  local YELLOW="\[\033[0;33m\]"
  local YELLOWBOLD="\[\033[1;33m\]"
  local BLUE="\[\033[0;34m\]"
  local BLUEBOLD="\[\033[1;34m\]"
  local PURPLE="\[\033[0;35m\]"
  local PURPLEBOLD="\[\033[1;35m\]"
  local CYAN="\[\033[0;36m\]"
  local CYANBOLD="\[\033[1;36m\]"
  local WHITE="\[\033[0;37m\]"
  local WHITEBOLD="\[\033[1;37m\]"
  local RESETCOLOR="\[\e[00m\]"

  local prompter_color="$GREENBOLD"
  if [[ $ret_status != "0" ]]; then
    prompter_color="$REDBOLD"
  fi

  local git_info=""
  if git_repo; then
    local branch=$(git_branch)
    local status=""
    if [[ -z $(git_status) ]]; then
      status="${GREEN}✔"
    else
      status="${RED}✘"
    fi
    git_info="${RESETCOLOR}on$WHITE git:$CYAN$branch $status"
  fi

  PS1="$PURPLEBOLD# $CYANBOLD\u$RESETCOLOR at $GREEN\h$RESETCOLOR in $YELLOWBOLD\w $git_info $RESETCOLOR[\t]\n${prompter_color}λ$RESETCOLOR "
}
export PROMPT_COMMAND=prompt_cmd

export PATH=$HOME/bin:$PATH

# Git autocomplete
# wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
source ~/git-completion.bash
