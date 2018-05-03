---
id: 689
title: 'python: unescape HTML'
date: 2013-07-30T11:25:26+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=689
categories:
  - it
tags:
  - html
  - python
---

```
#!python
import re
from htmlentitydefs import name2codepoint

def htmlentitydecode(string):
    return re.sub(
        '&(%s);' % '|'.join(name2codepoint),
        lambda m: unichr(name2codepoint[m.group(1)]),
        string)
```

Source: [Escaping HTML - Python Wiki](http://wiki.python.org/moin/EscapingHtml)
