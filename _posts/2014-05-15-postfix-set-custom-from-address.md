---
id: 709
title: 'postfix: set custom "from" address'
date: 2014-05-15T04:32:47+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=709
categories:
  - it
tags:
  - bash
  - ubuntu
  - postfix
---

```
#!bash
echo "smtp_generic_maps = hash:/etc/postfix/generic" >> /etc/postfix/main.cf
echo "root@localhost someuser@example.com" > /etc/postfix/generic
postmap /etc/postfix/generic
service postfix restart
```
