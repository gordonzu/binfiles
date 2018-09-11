#!/bin/bash

newproj=$1

mkdir $newproj
cd $newproj
cp ~/src/cpp/project/* .

rename "s/example/$newproj/g" *
sed -i "s/example/$newproj/g" * 
sed -i "s/Example/${newproj^}/g" *


#mkdir $1 && cd $1 
#cp ~/src/cpp/project/* .
#rename s/example/$1/ *
#find . -type f -print0 | xargs -0 sed -i s/example/$1/g
#foo=$1
#foo="$(tr '[:lower:]' '[:upper:]' <<< ${foo:0:1})${foo:1}"
#find . -type f -print0 | xargs -0 sed -i s/Example/$foo/g





