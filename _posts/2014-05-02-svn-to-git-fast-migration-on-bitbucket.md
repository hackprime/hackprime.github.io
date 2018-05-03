---
id: 701
title: 'svn to git: fast migration on bitbucket'
date: 2014-05-02T08:01:26+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=701
categories:
  - it
tags:
  - git
  - svn
---

```
git svn clone -s http://your.svn.server/projectname/ --trunk=trunk --branches=branches --tags=tags -A authors.txt --no-metadata --stdlayout ~/destination_path

cp -Rf .git/refs/remotes/tags/* .git/refs/tags/
rm -Rf .git/refs/remotes/tags
cp -Rf .git/refs/remotes/* .git/refs/heads/
rm -Rf .git/refs/remotes

git remote add origin username@bitbucket.org:/username/projectname.git

git push origin --all
```

authors.txt

```
author_svn_username = Author's Name on Git Server <and@email.com>
mike = Mike Smith <mike@example.com>
...
```

Source: [How can I convert all the remote branches in a local git repo into local tracking branches &#8212; Stack Overflow](http://stackoverflow.com/questions/19767171/how-can-i-convert-all-the-remote-branches-in-a-local-git-repo-into-local-trackin)
