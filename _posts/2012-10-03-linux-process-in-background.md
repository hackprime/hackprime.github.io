---
id: 645
title: Свернуть и развернуть процесс в терминале
date: 2012-10-03T20:59:32+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=645
categories:
  - it
tags:
  - bash
  - linux
---

Чтобы &#171;свернуть&#187; процесс, который в данный момент что-то выводит в STDOUT, просто нажимаем **ctrl + z**. Появится примерно такой вывод:

```
[1]+  Stopped                 mc
hackprime@PC:~$
```

Число в квадратных скобках &#8212; номер свёрнутой задачи.

Чтобы &#171;развернуть&#187; свёрнутый процесс используем команду fg:

```
hackprime@PC:~$ fg 1
```

Можно не передавать номер задачи, тогда будет восстановлен последний свёрнутый процесс.

Чтобы посмотреть список всех свёрнутых процессов &#8212; используем jobs:

```
hackprime@PC:~$ jobs
[1]   Stopped                 mc
[2]-  Stopped                 htop
[3]+  Stopped                 top
```

Источник: [sh &#8212; How can I resume a stopped job in Linux? &#8212; Super User](http://superuser.com/questions/268230/how-can-i-resume-a-stopped-job-in-linux)
