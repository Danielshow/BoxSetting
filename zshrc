export ZSH="/Users/danielshotonwa/.oh-my-zsh"
export PATH="$HOME/.jenv/bin:$PATH"
export LC_ALL=en_US.UTF-8
eval "$(jenv init -)"
export ES_HOME="~/Documents/project/elasticsearch-1.5.2"
export PATH=$ES_HOME/bin:$PATH
export FLUXX_LOCAL_CONFIG_NAME=dev-show-unique
# Use spaceship theme
ZSH_THEME="spaceship"
autoload -U promptinit; promptinit
export UPDATE_ZSH_DAYS=1

# Enable autocorrection
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  docker
  rails
  npm
  django
  rails
  git zsh-z
  bundler
  dotenv
  osx
  rake
  rbenv
  ruby
  jsontools
  node
  pip
  web-search
  zsh-autosuggestions
  colored-man-pages
  colorize
  common-aliases
  copyfile
)

SPACESHIP_PROMPT_ORDER=(
  time
  user
  host
  dir
  git
  node
  ruby
  xcode
  swift
  golang
  php
  rust
  docker
  venv
  pyenv
  line_sep
  vi_mode
  char
  )
  # PROMPT
   SPACESHIP_CHAR_SYMBOL="➜  "
   SPACESHIP_PROMPT_ADD_NEWLINE=true
   SPACESHIP_PROMPT_SEPARATE_LINE=true
   SPACESHIP_PROMPT_PREFIXES_SHOW=true
   SPACESHIP_PROMPT_SUFFIXES_SHOW=true
   SPACESHIP_PROMPT_DEFAULT_PREFIX=" "
   SPACESHIP_PROMPT_DEFAULT_SUFFIX=" "
   # TIME
   SPACESHIP_TIME_SHOW=false
   SPACESHIP_TIME_PREFIX="at "
   SPACESHIP_TIME_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
   SPACESHIP_TIME_FORMAT=false
   SPACESHIP_TIME_12HR=false
   SPACESHIP_TIME_COLOR="yellow"
   # USER
   SPACESHIP_USER_SHOW=true
   SPACESHIP_USER_PREFIX="with "
   SPACESHIP_USER_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
   SPACESHIP_USER_COLOR="yellow"
   SPACESHIP_USER_COLOR_ROOT="red"
   # HOST
   SPACESHIP_HOST_SHOW=true
   SPACESHIP_HOST_PREFIX="at "
   SPACESHIP_HOST_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
   SPACESHIP_HOST_COLOR="green"
   # DIR
   SPACESHIP_DIR_SHOW=true
   SPACESHIP_DIR_PREFIX="in "
   SPACESHIP_DIR_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
   SPACESHIP_DIR_TRUNC=3
   SPACESHIP_DIR_COLOR="cyan"
   # GIT
   SPACESHIP_GIT_SHOW=true
   SPACESHIP_GIT_PREFIX="on "
   SPACESHIP_GIT_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
   SPACESHIP_GIT_SYMBOL=" "
   # GIT BRANCH
   SPACESHIP_GIT_BRANCH_SHOW=true
   SPACESHIP_GIT_BRANCH_PREFIX="$SPACESHIP_GIT_SYMBOL"
   SPACESHIP_GIT_BRANCH_SUFFIX=""
   SPACESHIP_GIT_BRANCH_COLOR="magenta"
   # GIT STATUS
   SPACESHIP_GIT_STATUS_SHOW=true
   SPACESHIP_GIT_STATUS_PREFIX=" ["
   SPACESHIP_GIT_STATUS_SUFFIX="]"
   SPACESHIP_GIT_STATUS_COLOR="red"
   SPACESHIP_GIT_STATUS_UNTRACKED="?"
   SPACESHIP_GIT_STATUS_ADDED="+"
   SPACESHIP_GIT_STATUS_MODIFIED="!"
   SPACESHIP_GIT_STATUS_RENAMED="»"
   SPACESHIP_GIT_STATUS_DELETED="✘"
   SPACESHIP_GIT_STATUS_STASHED="$"
   SPACESHIP_GIT_STATUS_UNMERGED="="
   SPACESHIP_GIT_STATUS_AHEAD="⇡"
   SPACESHIP_GIT_STATUS_BEHIND="⇣"
   SPACESHIP_GIT_STATUS_DIVERGED="⇕"
   # NODE
   SPACESHIP_NODE_SHOW=true
   SPACESHIP_NODE_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"
   SPACESHIP_NODE_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
   SPACESHIP_NODE_SYMBOL="⬢ "
   SPACESHIP_NODE_DEFAULT_VERSION=""
   SPACESHIP_NODE_COLOR="green"
   # RUBY
   SPACESHIP_RUBY_SHOW=true
   SPACESHIP_RUBY_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"
   SPACESHIP_RUBY_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
   SPACESHIP_RUBY_SYMBOL="💎 "
   SPACESHIP_RUBY_COLOR="red"
   # XCODE
   SPACESHIP_XCODE_SHOW_LOCAL=true
   SPACESHIP_XCODE_SHOW_GLOBAL=false
   SPACESHIP_XCODE_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"
   SPACESHIP_XCODE_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
   SPACESHIP_XCODE_SYMBOL="🛠 "
   SPACESHIP_XCODE_COLOR="blue"
   # SWIFT
   SPACESHIP_SWIFT_SHOW_LOCAL=true
   SPACESHIP_SWIFT_SHOW_GLOBAL=false
   SPACESHIP_SWIFT_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"
   SPACESHIP_SWIFT_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
   SPACESHIP_SWIFT_SYMBOL="🐦 "
   SPACESHIP_SWIFT_COLOR="yellow"
   # GOLANG
   SPACESHIP_GOLANG_SHOW=true
   SPACESHIP_GOLANG_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"
   SPACESHIP_GOLANG_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
   SPACESHIP_GOLANG_SYMBOL="🐹 "
   SPACESHIP_GOLANG_COLOR="cyan"
   # PHP
   SPACESHIP_PHP_SHOW=true
   SPACESHIP_PHP_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"
   SPACESHIP_PHP_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
   SPACESHIP_PHP_SYMBOL="🐘 "
   SPACEHIP_PHP_COLOR="blue"
   # RUST
   SPACESHIP_RUST_SHOW=true
   SPACESHIP_RUST_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"
   SPACESHIP_RUST_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
   SPACESHIP_RUST_SYMBOL="𝗥 "
   SPACESHIP_RUST_COLOR="red"
   # DOCKER
   SPACESHIP_DOCKER_SHOW=true
   SPACESHIP_DOCKER_PREFIX="on "
   SPACESHIP_DOCKER_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
   SPACESHIP_DOCKER_SYMBOL="🐳 "
   SPACESHIP_DOCKER_COLOR="cyan"
   # VENV
   SPACESHIP_VENV_SHOW=true
   SPACESHIP_VENV_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"
   SPACESHIP_VENV_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
   SPACESHIP_VENV_COLOR="blue"
   # PYENV
   SPACESHIP_PYENV_SHOW=true
   SPACESHIP_PYENV_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"
   SPACESHIP_PYENV_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
   SPACESHIP_PYENV_SYMBOL="🐍 "
   SPACESHIP_PYENV_COLOR="yellow"
   # VI_MODE
   SPACESHIP_VI_MODE_SHOW=true
   SPACESHIP_VI_MODE_PREFIX=""
   SPACESHIP_VI_MODE_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
   SPACESHIP_VI_MODE_INSERT="[I]"
   SPACESHIP_VI_MODE_NORMAL="[N]"
   SPACESHIP_VI_MODE_COLOR="white"
source $ZSH/oh-my-zsh.sh

# My useful aliases
alias jira="cd ~/Documents/project/gitjira-cli"
alias prlist='go run *.go pr -s "2019-10-01" -o -c > ~/Documents/project/pr.txt'
alias c="clear"
alias q="exit"
alias zsh="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias vimrc='vim ~/.vimrc'
alias szsh="source ~/.zshrc"
alias p="cd ~/document/project/Personal\ Projects"
alias berm="bundle exec rake db:migrate"
alias bec="bundle exec rails c"
alias bes="bundle exec rails s"
alias bel="bin/elasticsearch"
alias fluxx="cd ~/Documents/project/Partner/fluxx_flmtg"
alias es="cd ~/Documents/project/elasticsearch-7.5.0 && bel"
alias dyn="DYNAMIC_SCHEDULE=true bundle exec rake resque:scheduler"
alias que="QUEUE=* bundle exec rake resque:work"
alias regex="perldoc perlreref"
local ret_status="%(?:%{$fg[yellow]%}=> :%{$fg[red]%}=> %s)"

bindkey -v
# npm global
export PATH=~/.npm-global/bin:$PATH

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/usr/local/opt/ruby/bin:$PATH"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
export PATH="/usr/local/opt/libxml2/bin:$PATH"
export PATH="/usr/local/opt/v8@3.15/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

  # Set Spaceship ZSH as a prompt
  autoload -U promptinit; promptinit
  prompt spaceship
