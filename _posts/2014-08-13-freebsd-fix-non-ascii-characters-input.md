---
id: 721
title: 'FreeBSD: fix non-ASCII characters input'
date: 2014-08-13T03:40:31+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=721
categories:
  - it
tags:
  - bash
  - freebsd
---

Paste this into ~/.bash_profile

```
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_COLLATE=POSIX
export LC_ALL=en_US.UTF-8
```
