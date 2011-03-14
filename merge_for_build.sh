#!/bin/sh
 
BRANCHES="scriptdevzero-nix ace_autoconf_fix mmaps_zero"
 
## Make a new temporary branch
git checkout master
git branch -D build
git checkout -b build

## Process the listed branches
for i in $BRANCHES
do
  echo "merge $i ?"
  read line
  if [ "$line" = "j" -o "$line" = "y" ]
  then
    echo "Start mergeing branch $i"
    git merge "$i"
 
  fi
  if [ "$?" != "0" ]
  then
    ## Something went wrong
    echo "Something went wrong with mergeing $i, Press CTRL+C to abort"
    read line_
  fi
done
echo "all done"