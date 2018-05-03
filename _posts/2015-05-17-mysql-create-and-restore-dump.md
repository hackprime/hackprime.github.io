---
id: 724
title: 'MySQL: create and restore dump'
date: 2015-05-17T15:56:22+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=724
categories:
  - it
tags:
  - mysql
---

```
mysqldump -P 3306 -h server.or.ip -u username -p database > dump.sql
```

```
mysql -u username -p database < dump.sql
```
