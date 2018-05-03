---
id: 661
title: Восстановление загрузчика Windows XP / Vista / 7
date: 2013-03-18T23:59:17+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=661
categories:
  - it
tags:
  - bootloader
  - grub
  - windows
  - windows 7
  - windows vista
  - windows xp
---

Ситуация следующая: на одном жёстком диске стояла Windows и дефолтным загрузчиком, потом на этот диск доставили Ubuntu в отдельный раздел и загрузчик GRUB в придачу, через некоторое время раздел диска на котором стояла Ubuntu вместе с GRUB&#8217;ом удаляется, остаётся Windows без загрузчика. Задача: восстановить дефолтный загрузчик Windows. Для этого грузимся с установочного диска (или установочной флешки) винды, запускаем консоль (Command prompt) и вводим:

&#8212; Для Windows XP:

```
fixboot
fixmbr
exit
```

&#8212; Для Windows Vista/7:

```
bootrec.exe /fixboot
bootrec.exe /fixmbr
```

Перезагружаемся, пользуемся.

**Источник**: [Grub/XP/Vista Bootloader &#8212; Ubuntu Forums](http://ubuntuforums.org/showthread.php?t=1014708)
