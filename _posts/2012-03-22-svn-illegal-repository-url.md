---
id: 392
title: 'svn: Illegal repository URL'
date: 2012-03-22T16:21:14+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=392
categories:
  - it
tags:
  - linux
  - svn
---

Если при попытке что-то закоммитить в svn получаем:

```
Commit failed (details follow):
Illegal repository URL ''
```

то для решения этой проблемы достаточно свичнуться по текущему адресу рабочей копии:

```
$ svn switch https://svn.site.com/true_project/
```

Источник: [svn &#8212; Subversion commit problem &#8212; Stack Overflow](http://stackoverflow.com/questions/5156833/subversion-commit-problem)
