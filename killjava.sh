#!/bin/bash

#jps | grep "java" | cut -d " " -f "1" | xargs kill -KILL


ps -lf | grep "java" |  perl -ane '($h,$m,$s) = split /:/,$F[13]; kill
+ 9, $F[3] if ($h > 1);'

