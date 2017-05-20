# rbenv
#export RBENV_ROOT="$HOME/.rbenv"
#export PATH="$HOME/.rbenv/bin:$PATH"
#eval "$(rbenv init -)"

# pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"

# plenv
#export PATH="$HOME/.plenv/bin:$PATH"
#eval "$(plenv init -)"

# phpenv
#export PHPENV_ROOT="$HOME/.phpenv"
#export PATH="$HOME/.phpenv/bin:$PATH"
#eval "$(phpenv init -)"

# Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# node
# export PATH=$HOME/.nodebrew/current/bin:$PATH

# Cordava(Android)
export ANDROID_HOME=/Development/android-sdk/
export PATH=${PATH}:/Development/android-sdk/platform-tools:/Development/android-sdk/tools

# GoLang
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
#export LANG=C

# alias
alias ll='ls -l'
alias ls='ls -G'
alias be='bundle exec'
alias bi='bundle install'
alias pwd='pwd; pwd | pbcopy'
alias emacs='emacs -nw'
export PATH=$PATH:/Users/shimazu-junya/bin

# colorscheme
export LSCOLORS=xxbfxcxdxbxegedabagacad

# docker
export DOCKER_TLS_VERIFY=1
export DOCKER_MACHINE_NAME=default
export DOCKER_HOST=tcp://192.168.99.100:2376
export DOCKER_CERT_PATH=/Users/shimazu-junya/.docker/machine/machines/default

# iTerm
#export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}: ${PWD/#$HOME/~}\010"'
#export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'
export PROMPT_COMMAND='echo -ne "\033]0;$PWD\007"'

# for gem native extension
export LIBRARY_PATH=/usr/local/lib:$LIBRARY_PATH

# tmp
export PATH=$PATH:/usr/local/Cellar/mysql/5.7.12/bin/mysql.server

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"
