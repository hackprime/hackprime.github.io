---
id: 719
title: 'ipython: prevent ipython from printing an exit confirmation message'
date: 2014-08-01T06:21:40+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=719
categories:
  - it
tags:
  - ipython
  - python
---

```
#!bash
ipython profile create
echo 'c.TerminalInteractiveShell.confirm_exit = False' >> ~/.ipython/profile_default/ipython_config.py
```
