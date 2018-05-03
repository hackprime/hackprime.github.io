---
id: 395
title: "python: can't compare offset-naive and offset-aware datetimes"
date: 2012-03-23T05:36:48+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=395
categories:
  - it
tags:
  - python
---

Если при сравнении двух дат получаем:

```
TypeError: can't compare offset-naive and offset-aware datetimes
```

то значит, что одна из дат имеет тайм-зону, а другая &#8212; не имеет, поэтому питон не может их сравнить.
