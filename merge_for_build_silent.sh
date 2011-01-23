#!/bin/sh
 
BRANCHES="windows_build_fix"
 
## Make a new temporary branch
git checkout master
git branch -D build
git branch build
git checkout build

## Process the listed branches
for i in $BRANCHES
do
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