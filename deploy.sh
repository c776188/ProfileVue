//deploy.sh
#!/usr/bin/env sh
# 當發生錯誤時終止腳本運行
set -e
# 打包
npm run build

git branch -D gh-pages
git push origin :gh-pages

git checkout -b gh-pages
git add -f dist
git commit -m 'deploy'
git subtree push --prefix dist origin gh-pages

git checkout master
pause