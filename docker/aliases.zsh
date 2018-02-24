alias docdaemon='sudo systemctl start docker.service'
alias d='docker $*'
alias d-c='docker-compose $*'
alias dps="docker ps --format 'table {{.ID}}\t{{.Names}}\t{{.Ports}}\t{{.Status}}'"

alias docstart='sudo dockerd  > /dev/null 2>&1 &'
alias docker-stop-all='docker stop $(docker ps -a -q)'
alias docker-rm-all='docker rm $(docker ps -a -q)'
alias docker-rmi-none='docker rmi $(docker images | grep "^<none>" | awk "{print $3}")'
alias docker-volumes-rm='docker volume rm $(docker volume ls -q)'
