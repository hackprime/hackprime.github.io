---
id: 415
title: Запуск µTorrent в Ubuntu
date: 2012-05-22T07:10:53+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=415
categories:
  - it
tags:
  - bash
  - linux
  - windows
---

Да, [для Linux есть своя версия µTorrent](http://www.utorrent.com/downloads/linux), но она сейчас слишком сырая и урезанная. Поэтому будем запускать виндовый utorrent.exe с помощью wine. <!--more-->

1) Ставим wine.

```
$ sudo apt-get install wine
```

2) Качаем свежий стабильный [µTorrent для Windows](http://www.utorrent.com/downloads).

3) Теперь создадим скрипт запуска utorrent.

```
$ sudo mcedit /usr/local/bin/utorrent
```

```
#!/bin/sh

# Директория, куда мы сохранили utorrent.exe.
cd ~/utorrent/
if [ "$1" != "" ]; then
    var="`echo $1 | sed 's////g'`"
    var="Z:${var}"
    wine utorrent.exe "$var"
else
    wine utorrent.exe
fi
```

```
$ sudo chmod +x /usr/local/bin/utorrent
```

4) Готово. Можно пользоваться. Если нужно перенести настройки µTorrent&#8217;a с Windows, то идём в ~/.wine/drive_s/users/username/Application Data/uTorrent/ и копируем туда файлы с конфигами.

Источник: [run uTorrent under Ubuntu + color change in wine](http://www.torrent-invites.com/software/100791-run-utorrent-under-ubuntu-color-change-wine.html).
