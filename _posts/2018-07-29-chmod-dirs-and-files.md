---
title: 'Change permissions of all nested files and directories'
date: 2018-07-29T22:18:35+09:00
author: hackprime
layout: post
categories:
  - it
tags:
  - Linux
---

For directories:
```
find . -type d -print0 | xargs -0 chmod -R 0755
```

For files:
```
find . -type f -print0 | xargs -0 chmod -R 0644
```
