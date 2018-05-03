---
id: 7
title: Настройка teredo в Window 7
date: 2011-07-01T17:39:30+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=7
categories:
  - it
tags:
  - teredo
  - windows
  - windows 7
---

Включить teredo:

```
netsh intface teredo set state enabled
```

Выключить teredo:

```
netsh intface teredo set state default
```

Установить сторонний teredo-сервер (по умолчанию стоит teredo.ipv6.microsoft.com):

```
netsh interface ipv6 set teredo client %server_name%
```

_Например teredo-debian.remlab.net_

Если teredo не включается, то можно попробовать:

```
netsh interface teredo set state enterpriseclient
```

Ну, и наконец, просмотр списка интерфейсов

```
netsh interface ipv6 show interfaces
```

если перед **Teredo Tunneling Pseudo-Interface** видим **connected**, то всё работает, и мы без проблем теперь сможем зайти на [ipv6.google.com](http://ipv6.google.com)
