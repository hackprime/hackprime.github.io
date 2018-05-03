---
id: 397
title: 'python: shallow and deep copy operations'
date: 2012-03-27T07:43:55+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=397
categories:
  - it
tags:
  - python
---

Shallow copy - copies a primitive types values and links on complex objects.

{% highlight python %}
>>> a = [1, 2]
>>> from copy import copy
>>> b = [1, 'a', True, a]
>>> c = copy(b)
>>> a.append(33)
>>> c
[1, 'a', True, [1, 2, 33]]
{% endhighlight %}

Deep copy - full copy of all nested objects


{% highlight python %}
>>> a = [1, 2]
>>> from copy import deepcopy
>>> b = [1, 'a', True, a]
>>> c = deepcopy(b)
>>> a.append(33)
>>> c
[1, 'a', True, [1, 2]]
{% endhighlight %}
```

Source: [Python Docs - Shallow and deep copy operations](https://docs.python.org/2/library/copy.html)
