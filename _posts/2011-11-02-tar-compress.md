---
id: 302
title: Запаковка в tar через консоль
date: 2011-11-02T14:40:54+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=302
categories:
  - it
tags:
  - linux
  - archive
---

Создать архив example.tar содержимого каталога /home


```
tar -cvf example.tar /home
```

Создать упакованный архив example.tar.gz содержимого каталога /home

```
tar -zcvf example.tar.gz /home
```

* c &#8212; создать новый файл архива.
* v &#8212; вывести детали.
* f &#8212; имя файла, куда архивировать.
* z &#8212; использовать сжатие.

[Источник](http://kadomtsev.ru/kak-zapakovat-arxiv-tar/)
