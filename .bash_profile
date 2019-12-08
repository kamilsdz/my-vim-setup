PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/work/go
export PATH="$PATH:$GOPATH/bin"

export TERM=xterm-256color
export CLICOLOR=1
export EDITOR=vim

alias postgre="pg_ctl -D /usr/local/var/postgres start"
alias be="bundle exec"
alias dce="docker-compose exec web"
