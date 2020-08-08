---
title: 'Crontab: on and off'
date: 2018-07-17T15:34:00+09:00
author: hackprime
layout: post
categories:
  - it
tags:
  - cron
---

These shortcuts allow to disable and enable crontab of current user.
```
# Off
crontab -l | sed -e s/^/#/ | crontab -
# On
crontab -l | sed -e s/^#// | crontab -
```
