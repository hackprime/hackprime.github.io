---
id: 194
title: Перетасовать и раздеть в python
date: 2011-09-08T13:56:17+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=194
categories:
  - it
tags:
  - python
  - regex
---

Две быстростроки питонокода (не считая импортных, ок). Первая располагает элементы списка в случайном порядке, вторая выкидывает все html-теги (вернее вообще любые теги) из строки.

{% highlight python %}
import random
random.shuffle(list)
{% endhighlight %}

{% highlight python %}
import re
text = re.sub('<.*?>', '', text_with_tags)
{% endhighlight %}

Капитан подсказывает, что вторую можно применять практически в любом языке, где есть регэкспы.
