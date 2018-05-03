---
id: 424
title: 'python: random sequence of characters'
date: 2012-05-30T14:41:58+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=424
categories:
  - it
tags:
  - python
---

```
#!python
import string
import random
print ''.join(
    random.choice(
        string.ascii_uppercase + string.ascii_lowercase + string.digits)
    for x in range(length))
```
