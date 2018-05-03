---
id: 633
title: 'sshfs и nfs: что лучше?'
date: 2012-09-30T07:56:48+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=633
categories:
  - it
tags:
  - bash
  - debian
  - filesystem
  - linux
  - ubuntu
---

**Задача**: смонтировать каталог с удалённого сервера в домащней системе.

**Решение**: монтируем с помощью sshfs каталог с сервера на клиент.

<!--more-->

```
sudo apt-get install sshfs
```

```
sshfs username@server.host.or.ip:/path/to/dir/ /target/mount/dir/
```

Для размонтирования используем:

```
fusermount -u /target/mount/dir/
```

### Недостатки sshfs

* низкая скорость передачи данных (из-за шифрования);
* частое зависание процесса sshfs;

Чтобы отмонтировать папку при зависшем процессе sshfs:

```
hackprime@PC:~$ ps aux | grep sshfs
1000      8216  0.0  0.0 315860   196 ?        Ssl  Sep29   0:00 sshfs username@server.host.or.ip:/path/to/dir/ /target/mount/dir/ -o rw,noexec,nosuid,nodev,sync,umask=0022
hackprime@PC:~$ kill -9 8216
```

Ещё один недостаток: sshfs может не только сам зависнуть, но и повесить вместе с собой весь сервер. Случается это как правило при редактировании больших файлов в примонтированной директории. Это может произойти, например, при редактировании тегов mp3-файла. Решение: можно попробовать запускать sshfs с опцией **-o async**, т.е. в асинхронном режиме, но лучше использовать для монтирования nfs.

### Установка nfs на сервере

Ставим пакеты:

```
sudo apt-get install nfs-kernel-server rpcbind
```

Дописываем в файл **/etc/exports** строку в которой указан адрес директории которую мы хотим примонтировать, сеть из которой будет доступна директория и опции монтирования (`no_subtree_check` &#8212; не осуществлять проверку вложенных каталогов)

```
/some/dir/ 192.168.100.0/24(ro, async, no_subtree_check)
```

Перезапускаем:

```
sudo /etc/init.d/nfs-kernel-server restart
```

### Установка nfs на клиенте

Ставим пакеты:

```
sudo apt-get install nfs-common
```

Монтируем:

```
mount 192.168.100.1:/some/dir/ /mount/target/dir/
```

### Выводы

* Если вы собираетесь использовать файлы сервера только для чтения, либо для чтения и редактирования небольших текстовых файлов, то лучше и надёжнее использовать sshfs.
* Для чтения файлов с домашнего сервера разумно использовать nfs с ограниченным доступом.


### Источники

  1. [Файловая система NFS на Debian](http://www.qdesnic.ru/page/nfs-system.html)
  2. [Linux NFS Mount: wrong fs type, bad option, bad superblock on fs2:/data3 Error And Solution](http://www.cyberciti.biz/faq/missing-codepage-helper-program-other-error/)
  3. [Чем заменить sshfs? [Архив] &#8212; Форум о поисковых системах](http://forum.searchengines.ru/archive/index.php/t-741915.html)
