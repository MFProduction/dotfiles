alias ecr-login="aws ecr get-login | sed 's|https://||'"

function eb () {
  command eb $@ --profile $AWS_DEFAULT_PROFILE
}
