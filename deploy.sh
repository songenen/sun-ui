rm -rf dist &&
yarn build &&
cd dist &&
git init &&
git add . &&
git commit -m "update" &&
git branch -M master &&
git remote add origin git@gitee.com:songenn/sun-ui.git &&
git push -f -u origin master &&
cd -
echo https://songenen.github.io/sun-ui-1/index.html