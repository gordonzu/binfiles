#!/bin/bash

sudo find / -type f -name $1 -not -path "~/.local/share/trash/*" -not -path "/media/*" -not -path "/timeshift/*" -print



