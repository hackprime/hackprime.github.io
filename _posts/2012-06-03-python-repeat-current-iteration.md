---
id: 427
title: 'python: repeat current "for" iteration'
date: 2012-06-03T10:20:26+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=427
categories:
  - it
tags:
  - python
---

```
#!python
for i in range(0,100):
    while True:
        try:
            do_smth(i)
        except MyException:
            continue
        break
```

Source: [How to retry after exception in python? &#8212; Stack Overflow](http://stackoverflow.com/questions/2083987/how-to-retry-after-exception-in-python)
