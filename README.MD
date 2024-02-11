### Shell script
Iam learning shell script and git

create a new repository on the command line

echo "# shell-script" >> README.md
git init
git branch -M master
git add README.md
git commit -m "first commit"
git config --global user.email "sriram.mudunuru@gamil.com"
git config --global user.name "sriram"

git remote add origin https://github.com/sriram-git-6/shell-script.git
git push -u origin master

pushing existing repository from command line

git remote add origin https://github.com/sriram-git-6/shell-script.git
git branch -M master
git push -u origin master

SSH authentication to github:

1. ssh-keygen -f ramu
2. open the public key in notepad and copy the content and import in github.
3. Import the public key in github server, settings--->ssh and gpg keys---> click on new ssh keys
4. Go to users-->.ssh--->create a file with name config without extensions. And in that config file add the below content.
# This is for sriram-git-6
Host github.com
	HostName github.com
	User git
	IdentityFile /c/Users/DELL/Downloads/sriram

# This is for devops74s
Host github.com-t
	HostName github.com
	User git
	IdentityFile /c/Users/DELL/Downloads/sriram
	    