#Create a new git repository "gitFlow"
git clone https://github.com/Arsalen/gitFlow.git
cd gitFlow
git flow init
git branch
echo "This is develop branch" > README.md
git add .
git commit -m 'First commit'
git push origin develop

git flow feature start MYFEATURE
echo "We have created a new feature" > README.md
git add .
git commit -m 'Second commit'
git flow feature publish MYFEATURE
git flow feature finish MYFEATURE
git push origin develop

git flow release start MYRELEASE
echo "then, we have created a new release" > README.md
git add .
git commit -m 'Third commit'
git flow release publish MYRELEASE
git flow release finish MYRELEASE
git push origin develop
git checkout master
git push origin master

git flow hotfix start MYFIX
echo "moreover, we have created a new hotfix" > README.md
git add .
git commit -m 'Forth commit'
git flow hotfix publish MYFIX
git flow hotfix finish MYFIX
git push origin develop
git checkout master
git push origin master
