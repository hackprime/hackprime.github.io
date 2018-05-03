---
id: 624
title: 'linux: установить права только для вложенных директорий'
date: 2012-09-30T07:37:44+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=624
categories:
  - it
tags:
  - bash
  - linux
---

Если мы сделаем:

```
hackprime@PC$ chmod -R 755 ~/somedir
```

то права прставятся как у директорий, так и у файлов. Чтобы установить права только для директорий:

```
hackprime@PC$ find ~/somedir -type d -exec chmod 0755 {} \;
```

Есть ещё один вариант, но он не модифицирует права у вложенных директорий, в именах которых есть пробел, т.к. команда не может их корректно распарсить.

```
hackprime@PC$ find ~/somedir -type d | xargs chmod 0755
```

**Источники:**

1. [Изменить права только на все директории - Linux и Unix - Сервер - Web.onRails](http://webonrails.ru/forum/server/topic/1031/)
2. [forum.opennet.ru &#8212; &#171;Изменение прав доступа только для директорий&#187; (1)](http://www.opennet.ru/openforum/vsluhforumID1/43144.html)
