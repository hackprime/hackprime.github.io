---
id: 87
title: Как я VirtualBox ставил
date: 2011-08-06T17:13:18+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=87
categories:
  - it
tags:
  - bash
  - debian
  - linux
  - ubuntu
  - virtualbox
---

Речь сегодня пойдёт о виртуальной машине от компаии Oracle — VirtualBox.

Продукт достаточно хороший, не громоздкий, обладает всеми необходимыми функциями. Однако, самое весомое его преимущество (по сравнению с той же VMware) — он бесплатный.

На Windows он работает сразу «из коробки». Установил, запустил, создал/подключил виртуальный HDD и вперде!

В Linux же, как обычно, нужно немного (или много) изъебнуться. Установку VB в Ubuntu/Debian я как раз и буду описывать.

Итак, поехали:<!--more-->

**1)** Прежде чем устанавливать VB — подготовим площадку. Для работы виртуальной машины требуется установить и скомпилировать заголовки ядра Linux. Для этого нужно знать версию ядра своей системы:

```
$ uname -r
```

Получим что-то вроде:

```
2.6.26-2-686
```

Это и есть версия ядра.

Теперь ставим пакет linux-headers-**%version%**:

```
$ sudo apt-get install linux-headers-2.6.26-2-686
```

Или одной командой:

```
$ sudo apt-get install linux-headers-$&#40;uname -r&#41;
```

**2)** Теперь ставим «инфраструктуру для поддержки динамически загружаемых модулей ядра», иными словами — dkms:

```
$ sudo apt-get install dkms
```

эта, кхм, «инфраструктура» поможет нам скомпилировать установленные заголовки ядра для VirtualBox не трогая при этом само ядро.

**3)** Устанавливаем VirtualBox. Для этого идём на [официальный сайт](http://www.virtualbox.org/wiki/Linux_Downloads) и качаем deb-пакет, соответствующий нашей системе. И затем:

```
$ sudo dpkg -i /path/to/virtualbox-package.deb
```

Есть ещё один способ (он описан ниже, на той же странице, но я утащу его сюда). Для этого открываем /etc/apt/sources.list и добавляем адреса репозиториев VirtualBox&#8217;а.

```
deb http://download.virtualbox.org/virtualbox/debian natty contrib
deb http://download.virtualbox.org/virtualbox/debian maverick contrib non-free
deb http://download.virtualbox.org/virtualbox/debian lucid contrib non-free
deb http://download.virtualbox.org/virtualbox/debian karmic contrib non-free
deb http://download.virtualbox.org/virtualbox/debian hardy contrib non-free
deb http://download.virtualbox.org/virtualbox/debian squeeze contrib non-free
deb http://download.virtualbox.org/virtualbox/debian lenny contrib non-free
```

Далее, качаем ключ и устанавливаем его, чтобы apt-secure не ругался:

```
$ wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -
```

Делаем апдейт:

```
$ sudo apt-get update
```

И, наконец, устанавливаем:

```
$ sudo apt-get install virtualbox-4.1
```

**4)** Осталось только добавить себя в группу vboxusers для корректной работы с USB:

```
$ sudo usermod -a -G vboxusers %username%
```

Готово! Можно грабить корова^Wустанавливать WinXP на виртуалку =)

**Возможные ошибки**:

—**Kernel driver not installed (rc=-1908)**

Возникает в случае отсутствия скомпилированных модулей ядра, т.е. если, например, VirtualBox ставился до установки модулей ядра, или при компиляции произошла ошибка. Лечится так:

```
$ sudo /etc/init.d/vboxdrv setup
```

При этом нужные заголовки ядра и dkms должны быть установлены.

**Источники**:

1. [My Linux Blog &#8212; Установка VirtualBox](http://mylinuxblog.ru/ustanovka-virtualbox/)
2. [VirtualBox. Руководство пользователя](http://mirspo.narod.ru/vbox/ch02s03.html)
3. [Mind in motion &#8212; Исправление проблемы с VirtualBox в Ubuntu Linux 10.10](http://www.mindinmotion.ru/post/virtualbox-ubuntu-linux-10-10-resolution-fix)
4. [UnixForum.org &#8212; rc=-1908](http://unixforum.org/index.php?showtopic=120286)
5. [LinuxQuestions.org &#8212; building guest additions in VirtualBox with 38-kernel fails](http://www.linuxquestions.org/questions/linux-virtualization-90/building-guest-additions-in-virtualbox-with-38-kernel-fails-871284/#post4305253)
6. [LinuxQuestions.org &#8212; Unable to use VirtualBox after update](http://www.linuxquestions.org/questions/debian-26/unable-to-use-virtualbox-after-update-874334/)
7. [Русскоязычное сообщество Ubuntu Linux &#8212; Virtualbox перестал работать после обновления до 11.04](http://forum.ubuntu.ru/index.php?topic=150539.0)
8. [LINUX.ORG.RU &#8212; VirtualBox выдает ошибку &#171;Kernel driver not installed (rc=-1908)&#187;](http://www.linux.org.ru/forum/general/4896473)
9. [www.sgu.kz &#8212; FATAL: Module vboxdrv not found](http://ineu.sgu.kz/viewtopic.php?f=30&t=1689&start=0)
10. [VirtualBox.org &#8212; DKMS don&#8217;t works](http://forums.virtualbox.org/viewtopic.php?f=7&t=43117)
11. [VirtualBox.org &#8212; Starting VirtualBox kernel modules FAILED](http://forums.virtualbox.org/viewtopic.php?f=7&t=43089)
