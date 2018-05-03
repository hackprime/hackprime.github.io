---
id: 17
title: phpBB3 – «Общая ошибка Could not get style data»
date: 2011-07-03T05:57:51+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=17
categories:
  - it
tags:
  - linux
  - phpbb
---

При переносе форума phpBB3 на хостинг под управлением Linux может возникнуть такая ошибка. А решается она просто &#8212; достаточно установить права на директорию cache и всему её содержимому для записи всем (как вариант, содержимое можно просто удалить).

```
$ chmod -R 666 /path/to/phpbb3/cache/
```
