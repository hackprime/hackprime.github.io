---
id: 651
title: 'svn: изменить адрес репозитория в рабочей копии'
date: 2012-12-11T04:13:16+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=651
categories:
  - it
tags:
  - svn
---

```
svn switch --relocate OLD_URL NEW_URL
```

**HINT**: Если вы обращаетесь к репозиторию по IP, то лучше прописать для этого IP алиас в /etc/hosts и обращаться к репозиторию по этому алиасу, тогда, при внезапной смене IP, такой фигнёй вам страдать не придётся.

**Источник:** [Subversion Users: Re: Changing server IP in working copy](http://svn.haxx.se/users/archive-2004-08/0073.shtml)
