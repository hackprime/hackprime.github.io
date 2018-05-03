---
id: 363
title: 'Обновление Debian: с Lenny до Squeeze'
date: 2012-02-12T11:42:11+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=363
categories:
  - it
tags:
  - debian
  - linux
---

**Подготовка**:

1) Для начала, отключаем все сторонние источники в /etc/sources.list .

2) Делаем резервную копию (как минимум раздела /etc/).

3) На всякий случай обновляем все установленные пакеты

```
$ sudo apt-get update
$ sudo apt-get upgrade
```

**Обновление**:

1) Открываем /etc/sources.list и меняем в каждой строке &#171;lenny&#187; на &#171;**squeeze**&#171;.

2) Запускаем update и upgrade

```
$ sudo apt-get update
$ sudo apt-get upgrade
```

3) Далее, нам нужно установить метапакет ядра. Для этого узнаём версию и архитектуру ядра командой:

```
$ uname -r
```

и ставим пакет linux-image-%version%, например:

```
$ sudo apt-get install linux-image-2.6-686
```

4) Устанавливаем udev:

```
$ sudo apt-get install udev
```

5) И, наконец, запускаем процедуру обновления:

```
$ sudo apt-get dist-upgrade
```

Если dist-upgrade будет спрашивать нужно ли для того или иного пакета заменить изменённый конфигурационный файл новым &#8212; смело соглашайтесь. Любые свои настройки мы всегда можем восстановить из бэкапа.

**P.S.**: И всё-таки, перед обновлением, рекомендую ознакомиться с официальным руководством по обновлению (первая ссылка в источниках).

**Источники**:

1. [Обновление с Debian 5.0 (lenny)](http://www.debian.org/releases/stable/mips/release-notes/ch-upgrading.ru.html#kernel-metapackage);
2. [udev — Википедия](http://ru.wikipedia.org/wiki/Udev)
