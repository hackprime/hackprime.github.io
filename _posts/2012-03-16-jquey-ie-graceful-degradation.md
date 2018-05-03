---
id: 386
title: 'jQuery: заглушка для б-гомерзких IE'
date: 2012-03-16T09:42:48+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=386
categories:
  - it
tags:
  - ie
  - javascript
  - jquery
---

{% highlight js %}
if ($.browser.msie) {
  if ($.browser.version < 9) {
    alert('Go away.')
  } else {
    alert('Welcome!')
  }
}
{% endhighlight %}

Источник: [css &#8212; My page layout breaks in IE7, rights itself if I hover over/open a menu item &#8212; Stack Overflow](http://stackoverflow.com/questions/1526338/my-page-layout-breaks-in-ie7-rights-itself-if-i-hover-over-open-a-menu-item/4551220#4551220)
