#!/bin/bash

# https://github.com/gordonzu

repo_name=$1
commit_message=$2
test -z $repo_name && echo "Repo name required." 1>&2 && exit 1

curl -u 'gordonzu' https://api.github.com/user/repos -d "{\"name\":\"$repo_name\"}"
git init
git add -A
git commit -m "$commit_message"
git remote add origin "https://github.com/gordonzu/$repo_name.git"
git push -u origin master

#heroku create
#git push heroku master
#heroku open










