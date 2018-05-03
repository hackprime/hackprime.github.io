---
id: 306
title: Перевод чисел из десятичной системы счисления и обратно в python
date: 2011-12-22T14:20:48+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=306
categories:
  - it
tags:
  - python
---

Перевод из десятичной системы в двоичную, восьмиричную и шестнадцатиричную (данный способ оставляет вначале результативной строки префикс системы счисления &#8212; &#8216;0b&#8217;, &#8216;0&#8217; и &#8216;0x&#8217; соответственно):

{% highlight python %}
dec_num = 36
print bin(dec_num) # '0b100100'
print oct(dec_num) # '044'
print hex(dec_num) # '0x24'
{% endhighlight %}

Перевод из двоичной, восьмиричной и шестнадцатиричной систем в десятичную:

{% highlight python %}
print int('10110', 2)   # 22
print int('1653', 8)    # 939
print int('50a7f9', 16) # 5285881
{% endhighlight %}

Источник: [Built-in Functions — Python v2.7.2 documentation](http://docs.python.org/library/functions.html)
