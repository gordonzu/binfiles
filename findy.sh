#!/bin/bash

find / -noleaf -wholename '/media' -prune \
      -o -wholename '/cdrom' -prune \
      -o -wholename '/home/gordonz' -prune \
      -o -wholename '/usr/share/doc' -prune \
      -o -wholename '/root' -prune \
      -o -wholename '/var' -prune \
      -o -wholename '/tmp/tmph*' -prune \
      -o -wholename '/proc' -prune \
      -o -wholename '/sys' -prune \
      -o -wholename '/run' -prune \
      -o -wholename '/etc' -prune \
      -o -wholename '/opt' -prune \
      -o -wholename '/lost+found' -prune \
      -o -wholename '/home/xulu/.dropbox' -prune \
      -o -wholename '/home/xulu/Dropbox' -prune \
      -o -wholename '/home/xulu/pictures' -prune \
      -o -wholename '/home/xulu/backups' -prune \
      -o -wholename '/home/xulu/docs' -prune \
      -o -name $1 -type f -print
