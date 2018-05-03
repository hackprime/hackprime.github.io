---
id: 669
title: 'jquery: получить массив значений элемента "select"'
date: 2013-06-04T09:27:05+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=669
categories:
  - it
tags:
  - javascript
  - jquery
---

{% highlight javascript %}
(function (selector) {
    var opts = $(selector).find('option').toArray();
    var res = [];
    opts.forEach(function(e){
        res.push(parseInt($(e).attr('value')));
    });
    return res;
})("#SELECT_ID");
{% endhighlight %}
