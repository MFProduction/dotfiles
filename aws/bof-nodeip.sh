#!/bin/bash

usage (){
  echo "nodeips [staging|production] [frontend|graphql|admin|worker]"
  exit 1
}

if [ -z "$1" ];then
        usage
elif [ -z "$2" ]; then
        usage
fi

if ! [[ "$1" =~ ^(production|staging)$ ]]; then
       usage
fi
stage=$1
if [ $2 = "frontend" ]; then
        role=$2
        group=$2
elif [ $2 = "worker" ]; then
        role="worker-sidekiq"
        group="worker"
elif [ $2 = "graphql" ]; then
        role="frontend-graphql"
        group="frontend"
elif [ $2 = "admin" ]; then
        role="frontend-admin"
        group="frontend"
else
        usage
fi

aws ec2 describe-instances --output json --filters \
"Name=tag:Environment,Values=$stage"  \
"Name=tag:Terraformed,Values=true" \
"Name=tag:Group,Values=$group-$stage" \
"Name=tag:Role,Values=$role" \
"Name=instance-state-name,Values=running" \
|jq '.Reservations | .[].Instances | .[].NetworkInterfaces | .[].PrivateIpAddresses | .[].Association.PublicIp' | sed 's/"//g'
