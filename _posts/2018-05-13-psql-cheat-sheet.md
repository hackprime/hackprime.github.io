---
title: 'psql: cheat sheet'
date: 2018-05-13T00:14:39+09:00
author: hackprime
layout: post
categories:
  - it
tags:
  - psql
  - postgresql
---

Prepaired some commands for PostgreSQL database schema investigating from command line

List databases
```
\list
# or
\l
```

Select database
```
\connect db_name
# or
\c db_name
```

List tables of database
```
\dt
# or
SELECT * FROM pg_catalog.pg_tables;
```

List columns of database table
```
\d+ table_name
# or
SELECT *
FROM information_schema.columns
WHERE table_schema = 'your_schema'
  AND table_name = 'your_table'
```
