---
id: 679
title: Заставить ibus работать в opera
date: 2013-07-15T09:04:37+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=679
categories:
  - it
tags:
  - ibus
  - ubuntu
  - opera
---

Для этого нужно в скрипт запуска **/usr/bin/opera** засунуть переменную окружения `XMODIFIERS="@im=ibus"`. Итого, скрипт будет выглядеть так:

```
#!/bin/sh
export OPERA_DIR=${OPERA_DIR:-/usr/share/opera}
export XMODIFIERS="@im=ibus"
exec /usr/lib/opera/opera "$@"
```

Согласно источнику, сработало в 11й версии, в 12й тоже работает.

Источник: [Opera 11.10 and IBus. &#8212; Opera for *nix &#8212; Linux/FreeBSD &#8212; Opera Community](http://my.opera.com/community/forums/topic.dml?id=916031&t=1373876284&page=1#comment9021272)
