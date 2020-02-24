#!/usr/bin/env bash

# Exit if name argument is not given
if [ -z "$*" ]; then
    echo "A project name argument must be provided."
    exit 0
fi

NAME=$1


################################################################################


# Clone template repository
git clone https://github.com/gordonzu/cpp_template

# Create bare repository
git --bare init ${NAME}

# Push template master branch to bare repository
cd cpp_template
git push ../${NAME} +master:master

# Convert bare repository into a normal repository
cd ../${NAME}
mkdir .git
mv * .git
git config --local --bool core.bare false
git reset --hard

# Clean Up
rm -rf ../cpp_template
cd $(echo {$NAME} | tr -d '\r') 2> /dev/null 
 

