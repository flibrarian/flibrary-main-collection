git config --global user.name "flibrarian"
git config --global user.email "flibrarian@example.com"
git checkout --orphan latest_branch
git add -A
git commit -am "Update: `date +"%Y-%m-%d"`"
git branch -D master
git branch -m master
git push -f origin master
git gc --aggressive --prune=all