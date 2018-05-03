---
id: 403
title: 'Putty: каракули и абракадабра в midnight commander'
date: 2012-04-25T16:46:28+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=403
categories:
  - it
tags:
  - linux
  - mc
  - putty
  - ssh
  - windows
---

Подключился я по ssh к недавно арендованному серверу, поставил mc, запустил его и обнаружил, что вся вёрстка окна mc пошла по п^W^W^Wсломалась. Выяснилось, что нужно в настройках ssh-клиента (у меня виндовый putty) выставить свойство &#171;Remote character set&#187; в значение &#171;UTF-8&#187;. После этого всё заработало как надо.

Источник: [Каракули в mc при работе через putty](http://nemcd.com/2008/10/karakuli-v-mc-pri-rabote-cherez-putty/)
