alias d='docker $*'
alias d-c='docker-compose $*'

alias d-d='sudo dockerd'
alias d-ds='sudo dockerd  > /dev/null 2>&1 &'

alias dps="docker ps --format 'table {{.ID}}\t{{.Names}}\t{{.Ports}}\t{{.Status}}'"

alias ds-all='docker stop $(docker ps -a -q)'
alias dr-all='docker rm $(docker ps -a -q)'
alias dr-volumes='docker volume rm $(docker volume ls -q)'
alias drmi-empty='docker rmi $(docker images | grep "^<none>" | awk "{print $3}")'
