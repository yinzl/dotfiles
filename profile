export PATH="/Users/zhaoliangyin/bin:/use/local/bin:$PATH"
export EDITOR='vim'

# Mysql bin
export PATH="/usr/local/mysql/bin:$PATH"

#NVM path Nodejs Version Manager
export NVM_DIR=~/.nvm
  . $(brew --prefix nvm)/nvm.sh

#Android HOME and bin
export ANDROID_HOME=/usr/local/opt/android-sdk
export PATH="$ANDROID_HOME/bin:$PATH"

#alias for cnpm(taobao.org) Nodejs Package Manager
alias cnpm="npm --registry=https://registry.npm.taobao.org \
  --cache=$HOME/.npm/.cache/cnpm \
  --disturl=https://npm.taobao.org/dist \
  --userconfig=$HOME/.cnpmrc"


# RVM - Ruby Version Manager
# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 
# Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin"


# for brew path
export PATH="/usr/local/sbin:$PATH"

