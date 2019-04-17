 alias terraform-validate='find . -type f -name "*.tf" -exec dirname {} \;|sort -u | while read m; do (terraform validate -check-variables=false "$m" && echo "√ $m") || exit 1 ; done'

alias terraform-fmt='terraform fmt -check=true -write=false -diff=true'

alias tgi='terragrunt init'
alias tgv='terragrunt validate'
alias tgp='terragrunt plan'
alias tgpl='terragrunt plan | landscape'
alias tga='terragrunt apply'
alias tgaap='terragrunt apply --auto-approve'
alias tgo='terragrunt output'
alias tgd='terragrunt destroy'

