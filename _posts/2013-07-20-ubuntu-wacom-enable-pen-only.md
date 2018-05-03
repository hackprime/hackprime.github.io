---
id: 683
title: Заставить планшет wacom реагировать только на перо
date: 2013-07-20T04:38:53+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=683
categories:
  - it
tags:
  - ubuntu
  - wacom
---

```
$ xsetwacom --list
Wacom Bamboo 16FG 4x5 Pen stylus    id: 11  type: STYLUS
Wacom Bamboo 16FG 4x5 Pen eraser    id: 12  type: ERASER
Wacom Bamboo 16FG 4x5 Finger touch  id: 13  type: TOUCH
Wacom Bamboo 16FG 4x5 Finger pad    id: 14  type: PAD
```

Затем берём id соответствующий **Finger touch** и:

```
xsetwacom set %id% touch off
```

Источники:

1. [Wacom Bamboo Pen & Touch &#8212; Ubuntu 12.04 on Ubuntu Forums](http://ubuntuforums.org/showthread.php?t=2011927)
2. [Настройка Wacom Bamboo Pen на Ubuntu - jetfix.ru](http://jetfix.ru/snippets/nastrojka-wacom-bamboo-pen-na-ubuntu/)
