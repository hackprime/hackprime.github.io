---
id: 82
title: 'fatal error: Python.h: No such file or directory'
date: 2011-08-04T17:25:52+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=82
categories:
  - it
tags:
  - bash
  - debian
  - linux
  - python
  - ubuntu
---

У меня такая ошибка возникла при попытке установить сторонний модуль питона через PIP. Решение у проблемы элементарное — поставить dev-пакет к своей версии питона. Для debian/ubuntu это может выглядеть так:

```
$ sudo apt-get install python2.7-dev
```

**Источники**:

[Alex Sleat — How To Fix: fatal error: Python.h: No such file or directory](http://alexsleat.co.uk/2011/01/01/fatal-error-python-h-no-such-file-or-directory/)
