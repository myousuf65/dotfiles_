# ssh / gpg keys for github

```
 ssh-keygen -t ed25519
```
-> create passphrase for the key and rename it : /Users/ypathan/.ssh/id_nutrition

```
ssh-add /Users/ypathan/.ssh/id_nutrition
```
-> the agent will help u pass the keys, dont have to enter passphrase every time


```
cat /Users/ypathan/.ssh/id_nutrition.pub
```
-> cat out the public key and add to github

```
Host nutrition.github.com
  HostName github.com
  PreferredAuthentications publickey
  IdentityFile ~/.ssh/id_nutrition
```
-> append this to ~/.ssh/config

## git repo

- before repo.git.config file
```
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
	ignorecase = true
	precomposeunicode = true
[remote "origin"]
	url = git@github.com:feeds015/TEST-PRIVATE.git
	fetch = +refs/heads/*:refs/remotes/origin/*
```

-append nutrition to the url
```
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
	ignorecase = true
	precomposeunicode = true
[remote "origin"]
	url = git@nutrition.github.com:feeds015/TEST-PRIVATE.git
	fetch = +refs/heads/*:refs/remotes/origin/*
```




