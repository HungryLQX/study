ssh-keygen -t rsa -C "450689113@qq.com"
cp ~/.ssh/id_rsa.pub <remote server>

git config --global user.name luoqingxin
git config --global user.emal "450689113@qq.com"
git config --global alias.st status
git config --global color.status auto
git config --global color.diff auto
git config --global color.branch auto
git config --global color.interactive auto
git config --global core.excludesfile ~/.gitignore
