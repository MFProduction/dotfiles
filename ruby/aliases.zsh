alias sc='script/console'
alias sg='script/generate'
alias sd='script/destroy'
alias sidekiq_rerun="bundle exec rerun --background --dir app,db,lib --pattern '{**/*.rb}' -- bundle exec sidekiq --verbose"

alias generate_rails_secret='openssl rand -hex 64'
