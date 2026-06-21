# Git Basics
## Install Git https://git-scm.com/install/windows
### Check Git version  git --version
### Config Git
1. git config --global user.name "Your Name"
2. git config --global user.email "your@email.com"
3. git config --list
### First Repository
1. mkdir git-project
2. cd git-project
3. git init
4. ls -ls //You will see .git this is the Git database
5. echo "Hello DevOps" > app.txt
6. git status // output Untracked file: app.txt
7. git add app.txt //output changes to be committed
8. git commit -m "Initial commit"
9. git log // Check history
