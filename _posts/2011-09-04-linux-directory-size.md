---
id: 188
title: Узнать размер директории
date: 2011-09-04T15:33:49+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=188
categories:
  - it
tags:
  - unix
---

```
$ du -hs /path/to/folder
```

**UPDATE from Mayoi Hachikuji**

Чтобы узнать размер нескольких объектов (включая директории), а также их сумму, используем флаг -c. Работает также с масками.

```
$ du -shc ./dir1 ./dir2 ./dir3
```
