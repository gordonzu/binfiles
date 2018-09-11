#!/bin/bash


# if more than 1 parameter
#   rm $1 $2
# fi
# else
while [ ! -z "$1" ]; do
		echo you are moving $1 to the Trash Can... 
   cp -r "$1" ~/.local/share/Trash/files
   rm -rf "$1"
   shift  #increment the loop variable
done



