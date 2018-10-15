alias reload!='. ~/.zshrc'
alias zshc="vim ~/.zshrc"
alias cls='clear' # Good 'ol Clear Screen command

mkc () {
  mkdir -p "$@" && cd "$@"
}

alias mcd="mkc"
alias cmkdir="mkc"
alias mkdirc="mkc"
alias generate_password="date +%s | sha256sum | base64 | head -c 32 ; echo"
