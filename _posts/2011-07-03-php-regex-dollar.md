---
id: 22
title: 'Регулярные выражения, php и знак доллара'
date: 2011-07-03T18:46:05+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=22
categories:
  - it
tags:
  - php
  - regex
  - win32
---

Внезапно обнаружил такой (-ую) баг (фичу). Если в php, в регулярном выражении нужно (для сравнения или замены), чтобы в самом выражении присутствовал символ **$** (естественно, экранированный), то его в обязательном порядке нужно помещать в квадратные скобки, иначе соответствующий выражению входной текст не будет соответствовать ему.

_проверено для PHP Version 5.3.1 под Windows 7_

Пример такой:

```
var = "$3";
echo '<br>first regexp: ';
if (preg_match("/^\$[0-9]+$/", $var))
    echo 'passed';
else
    echo 'not passed';
echo '<br>second regexp: ';
if (preg_match("/^[\$]{1}[0-9]+$/", $var))
    echo 'passed';
else
    echo ' not passed';
```

Получим:

```
first regexp: not passed
second regexp: passed
```
