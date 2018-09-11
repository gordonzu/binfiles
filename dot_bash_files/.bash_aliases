if [ -x /usr/bin/dircolors ]; then
     test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
     alias ls='ls --color=auto'
     alias dir='dir --color=auto'
     alias vdir='vdir --color=auto'

     alias grep='grep --color=auto'
     alias fgrep='fgrep --color=auto'
     alias egrep='egrep --color=auto'
 fi

 go_libs="-lm"
 go_flags="-g -Wall -Werror -O3 -std=gnu11 -include allheads.h"
 alias go_c="c99 -xc '-' $go_libs $go_flags"

 alias ll='ls -alF --group-directories-first --color=auto'
 alias dd='ls -alF --group-directories-first --color=auto'
 alias srcsc='cd ~/src/scala'
 alias sc='scala'
 alias la='ls -A --color=auto'
 alias l='ls -CF --color=auto'
 alias ld='ls -d */'
 alias lp='ls --group-directories-first --color=auto -l'
 alias back='cd $OLDPWD'
 alias clr='clear'
 alias boot='sudo reboot'
 alias rr='/home/gordonzu/bin/rr.sh'
 alias runback='/home/gordonzu/bin/backup.sh'
 alias 256colors='/home/gordonzu/bin/256colors2.pl'
 alias untar='tar xvf'
 alias gunzip='tar xvfz'
 alias bunzip='tar xvfj'
 #alias media='cd /media/gordonzu/Data/backup/ubuntu'
 alias trash='cd /home/gordonzu/.local/share/Trash'
 #alias repl='java -jar /media/gordonzu/Data/backup/ubuntu/apps/java-repl/build/artifacts/javarepl-dev.build.jar'
 alias findx='find (! -name media \)'
 alias findy='/home/gordonzu/bin/findy.sh'
 alias proj='/home/gordonzu/bin/proj.sh'
 alias path='/home/gordonzu/bin/reset_path.sh'
 alias seven='/home/gordonzu/bin/java_seven.sh'
 alias eight='/home/gordonzu/bin/java_eight.sh'
 alias mav_prep='/home/gordonzu/bin/mav_prep.sh'
 alias dark='/home/gordonzu/apps/gnome-terminal-colors-solarized-master/set_dark.sh'
 alias light='/home/gordonzu/apps/gnome-terminal-colors-solarized-master/set_light.sh'
 alias play1='/home/gordonzu/bin/play1.sh'
 alias play2='/home/gordonzu/bin/play2.sh'
 alias play3='/home/gordonzu/bin/play3.sh'
 alias repo='/home/gordonzu/bin/repo.sh'

 # Add an "alert" alias for long running commands.  Use like so:
 #   sleep 10; alert
 alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && 
     echo terminal || echo error)" "$(history|tail -n1|sed -e 
     '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


