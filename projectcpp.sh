#!/bin/bash

mkdir $1 
cd $1
cwd=$(pwd)
rsync -av ~/src/cpp/project/. .
cd $cwd
rename s/example/$1/ *
find . -type f -print0 | xargs -0 sed -i s/example/$1/g
foo=$1
foo="$(tr '[:lower:]' '[:upper:]' <<< ${foo:0:1})${foo:1}"
find . -type f -print0 | xargs -0 sed -i s/Example/$foo/g


#cp -r /home/gordonzu/src/cpp/project/ /home/gordonzu/src/cpp/$1
#cp -r /home/gordonzu/src/cpp/project/ /home/gordonzu/src/cpp/$1/.
#rename s/example/$1/ *
#find . -type f -print0 | xargs -0 sed -i s/example/$1/g
#foo=$1
#foo="$(tr '[:lower:]' '[:upper:]' <<< ${foo:0:1})${foo:1}"
#find . -type f -print0 | xargs -0 sed -i s/Example/$foo/g


