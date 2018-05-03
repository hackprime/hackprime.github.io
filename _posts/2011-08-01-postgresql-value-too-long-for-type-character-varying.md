---
id: 64
title: 'PostgreSQL: value too long for type character varying'
date: 2011-08-01T16:35:45+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=64
categories:
  - it
tags:
  - postgresql
  - sql
  - ubuntu
  - utf-8
---

Импортировал я однажды базу данных PostgreSQL (в кодировке utf-8, конечно же) под управлением ubuntu, и всё шло хорошо, CREATE&#8217;ы выполнялись, индексы создавались… И тут, не пойми откуда, стали сыпаться ошибки вида «**DatabaseError: value too long for type character varying(50)**». Вариант о действительном наличии в запросе значений длиннее, чем положено, сразу отметается, т.к. в Debian всё отлично импортировалось. Значит, косячит PostgreSQL.

Дело в том, что шаблонная база данных **template1**, копированием которой создаются новые базы данных по умолчанию, изначально имела кодировку не utf-8. Следовательно, для корректного импорта нам нужно её перекодировать.

Для этого подключимся к базе данных и выполним несколько запросов.

```
$ psql -U postgres
```

Даём разрешение на подключение к базе данных template0.

```
UPDATE pg_database SET datallowconn = TRUE WHERE datname = 'template0';
```

Переключаемся к базе данных template0.

```
\c template0
```

Удалаяем опцию «это шаблон» у базы данных template1.


```
UPDATE pg_database SET datistemplate = FALSE WHERE datname = 'template1';
```

Удаляем template1.

```
DROP DATABASE template1;
```

Создаём новую базу с именем template1 по шаблону template0 с кодировкой UNICODE.

```
CREATE DATABASE template1 WITH template = template0 encoding = 'UNICODE';
```

Устанавливаем базе template1 флаг шаблона.

```
UPDATE pg_database SET datistemplate = TRUE WHERE datname = 'template1';
```

Переключаемся к базе данных template1.

```
\c template1
```

Запрещаем подключения к template0.

```
UPDATE pg_database SET datallowconn = FALSE WHERE datname = 'template0';
```

Теперь проблем с кодировкой не будет.

**PS**:

Если нет желания или необходимости трогать базу template1, то можно попробовать просто создать базу с указанием шаблона template0.


```
CREATE DATABASE %dbname% TEMPLATE template0;

```

**Источники**:

1. [StackOverflow: postgresql &#8212; Django fixture fails, stating "DatabaseError: value too long for type character varying(50)"](http://stackoverflow.com/questions/3803552/django-fixture-fails-stating-databaseerror-value-too-long-for-type-character-v);
2. [PostgreSQL — Управление базами данных](http://pgsqldocrus.googlecode.com/svn-history/r86/trunk/doc/src/sgml/manage-ag.sgml).
