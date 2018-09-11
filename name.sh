#!/bin/bash

newname=$1

mkdir $newname
cd $newname
cp ~/src/cpp/project/* .
 
rename 's/example/$newname/g' *
sed -i 's/example/$newname/g' * 
sed -i 's/Example/${newname^}/g' *
 



