git checkout --orphan latest_branch
git add -A
git commit -am "Update: `date +"%Y-%m"`"
git branch -D master
git branch -m master
git push -f origin master
git gc --aggressive --prune=all