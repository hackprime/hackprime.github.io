---
id: 440
title: О времени в Ubuntu/Debian
date: 2012-08-04T06:30:49+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=440
categories:
  - it
tags:
  - debian
  - ubuntu
---

Чтобы посмотреть текущее время в данный момент &#8212; просто используем **date**.

```
$ date
Sat Aug  4 02:25:02 EDT 2012
```

Для определения разницы между временем на вашей машине и точным временем можно использовать **ntpdate**.

```
$ apt-get install ntpdate
$ ntpdate-debian
4 Aug 14:14:48 ntpdate[25717]: step time server 1.1.1.1 offset -60.000922 sec
```

Чтобы изменить время на сервере пользуемся

```
$ date MMDDhhmmCCYY.ss
```

Где:

  * MM — месяц,
  * DD — день месяца,
  * hh — часы,
  * mm — минуты,
  * CCYY — 4 цифры года,
  * ss — секунды.

Пример:

```
$ date 080414262012.00
```

Источники:

1. [Debian GNU/Linux: Настройка даты и времени](http://rymata.blogspot.com/2010/01/blog-post_24.html)
2. [Linux: Установка даты и времени](http://server-tuning.info/linux/setting-date-time.html)
