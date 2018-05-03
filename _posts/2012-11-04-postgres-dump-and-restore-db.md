---
id: 648
title: 'postgres: сделать дамп и восстановить из дампа'
date: 2012-11-04T14:33:43+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=648
categories:
  - it
tags:
  - bash
  - postgresql
---

Команду для создания дампа можно взять при проделывании этой операции в pgadmin&#8217;е:

```
/usr/bin/pg_dump --host 127.0.0.1 --port 5432 --username "postgres" --role "rolename" --no-password &nbsp;--format plain --encoding UTF8 --inserts --column-inserts --verbose --file "/home/username/dump.sql" "dbname"
```

Чтобы развернуть базу данных из дампа:

```
psql -d dbname -U username -f dump.sql
```
