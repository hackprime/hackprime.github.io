---
id: 98
title: 'Быстрая замена подстрок X→Y и Y→X в одной строке'
date: 2011-08-06T17:38:03+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=98
categories:
  - it
tags:
  - perl
  - regex
---

Когда-то на чаны вбросили такую задачку: «в произвольной строке с любыми символами, используя только строковые замены, заменить символ X на символ Y и символ Y на символ X». И Анон нашёл решение:


```
my $line = $ARGV[0];
print($line , "\n\r");
$line =~ s/d/dd/g;
$line =~ s/x/xdx/g;
$line =~ s/y/ydy/g;
$line =~ s/xdx/y/g;
$line =~ s/ydy/x/g;
$line =~ s/dd/d/g;
print($line , "\n\r");
```

* [doc: perl - print](http://perldoc.perl.org/functions/print.html)

И оно даже работает:

```
$ perl ./replace.pl xdxddxdyddydxdddxxxyyydyxdx
xdxddxdyddydxdddxxxyyydyxdx
ydyddydxddxdydddyyyxxxdxydy
```

Как видно, цель достигается за 6 строковых замен. Однако есть алгоритм, который добивается тех же результатов за 4 замены:

```
$line =~ s/z/zz/g;
$line =~ s/x/zx/g;
$line =~ s/zz/x/g;
$line =~ s/zx/z/g;
```
