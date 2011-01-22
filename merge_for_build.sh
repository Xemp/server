# recreate our temporary build branch
git checkout master
git branch -D build
git branch build
git checkout build

# for each patch branch there is, create a new entry
#   git merge somebranchname
git merge scriptdevzero