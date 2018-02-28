alias reload!='. ~/.zshrc'
alias zshc="vim ~/.zshrc"
alias cls='clear' # Good 'ol Clear Screen command

mkc () {
  mkdir -p "$@" && cd "$@"
}

alias mcd="mkc"
alias cmkdir="mkc"
alias mkdirc="mkc"
