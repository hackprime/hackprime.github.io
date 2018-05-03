---
id: 408
title: 'Ubuntu: фикс бага с переключение раскладки после обновления до 12.04 TLS'
date: 2012-04-27T15:14:29+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=408
categories:
  - it
tags:
  - bug
  - facepalm
  - ubuntu
---

При обновлении убунты до версии 12.04 TLS Пропала возможность переключать раскладку. Чтобы вернуть эту возможность для комбинации Alt+Shift и с подсветкой scroll lock&#8217;ом:

```
setxkbmap -layout 'us,ru' -option 'grp:alt_shift_toggle,grp_led:scroll'
```

Источник: [Ещё один способ сменить раскладку в Linux - Блог про Linux](http://useunix.ru/eshhyo-odin-sposob-smenit-raskladku-v-linux")
