 # ~/.bashrc: executed by bash(1) for non-login shells.
 # see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
 # for examples

 # If not running interactively, don't do anything
 case $- in
     *i*) ;;
     *) return;;
 esac

 # don't put duplicate lines or lines starting with space in the history.
 # See bash(1) for more options
 HISTCONTROL=ignoreboth

 # append to the history file, don't overwrite it
 shopt -s histappend

 # for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
 HISTSIZE=1000
 HISTFILESIZE=2000

 # check the window size after each command and, if necessary,
 # update the values of LINES and COLUMNS.
 shopt -s checkwinsize

 # If set, the pattern "**" used in a pathname expansion context will
 # match all files and zero or more directories and subdirectories.
 #shopt -s globstar

 # make less more friendly for non-text input files, see lesspipe(1)
 [ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

 # set variable identifying the chroot you work in (used in the prompt below)            
 if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
     debian_chroot=$(cat /etc/debian_chroot)
 fi

 # set a fancy prompt (non-color, unless we know we "want" color)
 case "$TERM" in
     xterm-color) color_prompt=yes;;
 esac

 # uncomment for a colored prompt, if the terminal has the capability; turned
 # off by default to not distract the user: the focus in a terminal window
 # should be on the output of commands, not on the prompt
 #force_color_prompt=yes

 if [ -n "$force_color_prompt" ]; then
     if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
     # We have color support; assume it's compliant with Ecma-48
     # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
     # a case would tend to support setf rather than setaf.)
     color_prompt=yes
     else
     color_prompt=
     fi
 fi

 #git repo
 source ~/bin/.git-prompt.sh

 #colors for prompt
 DARKGRAY='\e[1;30m'
 LIGHTGRAY='\e[0;37m\]'
 LIGHTRED='\e[1;31m'
 GREEN='\e[32m'
 YELLOW='\e[1;33m'
 BROWN='\e[0;33m'
 LIGHTBLUE='\e[1;34m'
 CYAN='\e[0;36m\]'
 BLUE='\e[0;34m\]'
 LIGHTGREEN='\e[1;32m\]'
 LIGHTCYAN='\e[1;36m\]'
 RED='\e[0;31m\]'
 PURPLE='\e[0;35m\]'
 LIGHTPURPLE='\e[1;35m\]'
 NC='\e[m'

 #PS1='${debian_chroot:+($debian_chroot)}\[\033[0;34m\]\u@\h\[\033[00m\]:\[\033[0;34m\][\w]\[\033[0;32m\]$(__git_ps1)\[\033[0;34m\]\[\033[00m\]
 #\$ '

PS1='${debian_chroot:+($debian_chroot)}\[\033[0;34m\]\u@\h\[\033[00m\]:\[\033[0;36m\][\w]\[\033[0;32m\]$(__git_ps1)\[\033[0;34m\]\[\033[00m\]
 \$ '
 

 #PS1='${debian_chroot:+($debian_chroot)}\[\033[0;34m\]\u@\h\[\033[00m\]:\[\033[0;34m\][\w]\[\033[0;33m\]$(__git_ps1)\[\033[0;34m\]\[\033[00m\]
 #\$ '

 unset color_prompt force_color_prompt

 # If this is an xterm set the title to user@host:dir
 case "$TERM" in
 xterm*|rxvt*)
     PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
     ;;
 *)
     ;;
 esac

  if [ -f ~/.bash_aliases ]; then
     . ~/.bash_aliases
 fi

 # enable programmable completion features (you don't need to enable
 # this, if it's already enabled in /etc/bash.bashrc and /etc/profile
 # sources /etc/bash.bashrc).
 if ! shopt -oq posix; then
   if [ -f /usr/share/bash-completion/bash_completion ]; then
     . /usr/share/bash-completion/bash_completion
   elif [ -f /etc/bash_completion ]; then
     . /etc/bash_completion
   fi
 fi

#if [ "$PATHS" != "true" ]; then
    #echo "re-setting PATH..."
    #export PATHS="true"
    #export PATH=""

    #export JAVA_HOME="/usr"
    #export SCALA_HOME="/home/gordonzu/apps/scala-2.11.7"
    #export ACTIVATOR_HOME="/home/gordonzu/apps/activator-1.3.7"
    #export JUNIT_HOME="/usr/share/java"
    #export ANT_OPTS="-Dant.logger.defaults=/home/gordonzu/bin/scripts/logger_custom_colors"
    #export RVM_HOME="$HOME/.rvm/bin"
    #export RUBY_HOME="/home/gordonzu/.rvm/rubies/ruby-2.3.3/bin/ruby"
    #export RAILS_HOME="/home/gordonzu/.rvm/gems/ruby-2.3.0@railstutorial_5_0/bin"
    #export GRADLE_HOME="/home/gordonzu/apps/gradle-2.1"
    #export GRADLE=$GRADLE_HOME/bin
    #export GMOCK_HOME="/home/gordonzu/apps/gmock-1.7.0"
    #export GMOCK_LIB="$GMOCK_HOME/mybuild"
    #export GMOCK_INC="$GMOCK_HOME/include"
    #export GTEST_INC="$GMOCK_HOME/gtest/include"
    #export GTEST_LIB="$GMOCK_HOME/mybuild"
    #export NPM_BIN="/home/gordonzu/bin/npm/bin"
    #export NPM_MODULES="/home/gordonzu/bin/npm/lib/node_modules"
    #export JS_PATH="/usr/lib/nodejs:/usr/lib/node_modules:/usr/share/javascript"
    #export NODE_PATH="/home/gordonzu/bin/npm/lib/node_modules:/usr/lib/nodejs:/usr/lib/node_modules:/usr/share/javascript"
    #export HEROKU_HOME="/usr/local/heroku/bin"
    export CLASSPATH=""
    export GITHUBUSER="gordonyx@gmail.com"

    #export PATH="$RAILS_HOME:$HOME/bin:$HOME/bin/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:$NPM_BIN:$NODE_PATH:$PATH"
    #export PATH="$RAILS_HOME:$HOME/bin:$HOME/bin/scripts:$NPM_BIN:$NODE_PATH:$PATH"
    #export PATH="$RAILS_HOME:$HOME/bin:$HOME/bin/scripts:$PATH"
#fi

    #export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
    #export PATH="$PATH:$HOME/bin:$HOME/bin/scripts" 
    
    export PATH="$HOME/bin:$HOME/bin/scripts:$PATH"

