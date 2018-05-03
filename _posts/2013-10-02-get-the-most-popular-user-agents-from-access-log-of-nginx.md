---
id: 692
title: Get the most popular user agents from access.log of nginx
date: 2013-10-02T07:42:57+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=692
categories:
  - it
tags:
  - bash
  - nginx
---

```
cat access.log | sed -E 's/.+("[^"]+")$/\1/g' | sort | uniq -c | sort -nrk1
```
