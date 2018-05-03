---
id: 707
title: 'svn: repository export and import'
date: 2014-05-04T14:40:47+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=707
categories:
  - it
tags:
  - svn
---

```
svnadmin dump /var/svn/repos/reponame > repo.dump
svnadmin create /var/svn/repos/reponame
svnadmin load /var/svn/repos/reponame < repo.dump
```
