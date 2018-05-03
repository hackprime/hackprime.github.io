---
id: 379
title: Скрыть блок при клике вне блока
date: 2012-03-16T09:35:28+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=379
categories:
  - it
tags:
  - css
  - html
  - javascript
  - jquery
---

Имеем блок:

{% highlight html %}
<div id="block">blah</div>
{% endhighlight %}

Чтобы блок скрывался при клике вне блока:

{% highlight js %}
document.onclick = function(ev) {
  var block = document.getElementById('block');
  if (ev.target.id != block.id && block.style.display === 'block') {
    block.style.display = 'none';
  }
}
{% endhighlight %}

Для jQuery:

{% highlight js %}
$(document).click(function(e) {
  if ($(e.target).parents().filter('#block:visible').length != 1) {
    $('#block').hide();
  }
});
{% endhighlight %}

Источник: [скрыть блок меню по клику вне самого блока / JavaScript / askdev](http://www.askdev.ru/javascript/1139/скрыть-блок-меню-по-клику-вне-самого-блока/#0.4349060594560239)
