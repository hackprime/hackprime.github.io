---
id: 372
title: Ручная установка Flash для Opera в Linux
date: 2012-03-09T14:23:44+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=372
categories:
  - it
tags:
  - linux
  - opera
---

Для начала ищем в системе файл libflashplayer.so:

```
$ locate libflashplayer.so
```

или

```
$ find / -name libflashplayer.so 2 > /dev/null
```

Если ничего не найдено, то качаем .tar-архив с ним [отсюда](http://get.adobe.com/flashplayer/).

Далее, копируем libflashplayer.so в директорию `/usr/lib/opera/plugins`. Если нет прав суперюзера, то копируем в `/home/username/.local/lib/opera/plugins`.

Перезапускаем оперу. Готово.

Источник: [Opera for Linux &#8212; Plug-ins: Installation](http://www.opera.com/docs/linux/plugins/install/#flash)
