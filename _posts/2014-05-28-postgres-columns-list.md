---
id: 715
title: 'postgres: columns list'
date: 2014-05-28T02:38:19+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=715
categories:
  - it
tags:
  - postgresql
---

{% highlight sql %}
SELECT column_name FROM information_schema.columns WHERE TABLE_NAME='table_name'
{% endhighlight %}
