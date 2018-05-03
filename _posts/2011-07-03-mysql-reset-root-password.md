---
id: 13
title: Сброс root-пароля в MySQL под Debian Lenny
date: 2011-07-03T05:38:48+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=13
categories:
  - it
tags:
  - debian
  - linux
  - mysql
  - sql
---

Бывает такое, что пароль предварительно не записывается, и потом, по разным причинам, забывается. Ниже приведён способ как это сделать.

1) Останавливаем демон mysql:

```
$ /etc/init.d/mysql stop
```

2) теперь снова запускаем его, но уже в безопасном режиме (и в фоне) через mysql_safe с опцией skip-grant-tables, что даёт нам возможность подключаться к мускулу без пароля:

```
$ /usr/bin/mysqld_safe --skip-grant-tables &
```

3) Теперь, когда преграда устранена, можем теперь спокойно войти в мускул без пароля:

```
$ mysql --user=root mysql
```

4) Далее, устанавливаем новый пароль и сбрасываем привилегии:

```
mysql> UPDATE USER SET Password=PASSWORD('%new_password%') WHERE USER='root';
# Query OK, 2 ROWS affected (0.04 sec)
# ROWS matched: 2  Changed: 2  Warnings: 0

mysql> FLUSH privileges;
# Query OK, 0 ROWS affected (0.02 sec)

mysql> exit
# Bye
```

5) Последний шаг &#8212; останавливаем и снова запускаем мускул в нормальном режиме (чтобы никто более не смог зайти без пароля):

```
$ /etc/init.d/mysql stop
```

```
$ /etc/init.d/mysql start
```

Всё. Вы успешно сбросили пароль от рута.

Для входа используем (с правами рута, естественно):

```
$ mysql --user=root --pass=%new_password%
```

```
$ mysql -u root -p %new_password%
```

**PS**:

Есть ещё один способ установить новый root-пароль, через bash, набрав под рутом:

```
$ mysqladmin -u root password %new_password%
```

Но лично у меня не сработало.

**PPS**:

И ещё несколько полезных SQL-запросов:

Назначение всех привилегий на все таблицы во всех базах данных пользователю %user% с паролем %password%:

```
mysql> GRANT ALL PRIVILEGES ON *.* TO '%user%'@'localhost' IDENTIFIED BY '%password%' WITH GRANT OPTION;
```

То же самое с возможностью доступа с других хостов:

```
mysql> GRANT ALL PRIVILEGES ON *.* TO '%user%'@"%" IDENTIFIED BY '%password%' WITH GRANT OPTION;
```

Назначение определённых привелегий на все таблицы в базе данных %database% пользователю %user% с паролем %password%:

```
mysql> GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, INDEX ON %database%.* TO '%user%'@"%" IDENTIFIED BY '%password%';
```

**Источники**:

1. [Resetting a forgotten MySQL root password](http://www.debian-administration.org/articles/442).
2. [Настройка MySQL сервера после установки](http://inetwork.ru/?p=17).
