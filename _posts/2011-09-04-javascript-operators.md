---
id: 174
title: Операторы JavaScript
date: 2011-09-04T07:21:50+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=174
categories:
  - it
tags:
  - javascript
---

Небольшая памятка по операторам JavaScript.

<!--more-->

### Оператор var

Опрератор <strong>var</strong> служит для объявления переменной. Областью действия является текущая функция, или весь документ, если переменная объявлена вне функции. <strong>var</strong> стоит использовать в функциях, т.к. могут быть глобальные переменные с тем же именем.

{% highlight js %}
var x = 10;
{% endhighlight %}

### Операторы if и else

Оператор условия.

{% highlight js %}
var x = 10;
if (x == 10) {
  alert("x = 10");
} else {
  alert("x ≠ 10");
}
{% endhighlight %}

### Операторы function и return

Оператор function служит для объявления функций. У функции могут быть название и аргументы. Оператор return определяет какое значение вернёт функция.

{% highlight js %}
// функция с названием и аргументами
function sum1 (a, b) {
    return a + b;
}
var s = sum1(1, 2);

// функция с названием и без аргументов
function sum2 () {
  return 1 + 3;
}
var s = sum2();

// анонимная функция (функция без имени, записанная в переменную)
sum3 = function (a, b) {
  return a + b
};
var s = sum3(5, 7);
{% endhighlight %}

### Оператор for

Оператор цикла, который выполняется с некоторым числом итераций, определяемым заданными выражениями. Варианты использования:

* оператор for с тремя выражениями определяющими переменную цикла и её начальное значение, ограничение для переменной цикла (условие продолжения цикла), шаг и направление её изменения соответственно:

{% highlight js %}
var i;
for (i = 0; i < 10; i = i + 2) {
  ...
}
{% endhighlight %}

Если не указывать второе выражение, то итерации будут продолжаться до тех пор, пока не произойдёт ошибки, либо пока не будет вызван оператор break.

{% highlight js %}
var i;
for (i = 0; ; i = i + 2) {
  ...
}
{% endhighlight %}

Если не указывать третье выражение выражение, то итерации будут проходить без изменения значения переменной цикла (значение переменной цикла в таком случае изменяют в теле цикла). Такой цикл завершится тогда, когда будет нарушено условие продолжения цикла.

{% highlight js %}
var i;
for (i = 0; i < 10; ) {
  ...
}
{% endhighlight %}

Если не указывать выражений вообще, то цикл будет продолжаться до тех пор, пока не будет вызван оператор break.

{% highlight js %}
for (;;) {
  ...
}
{% endhighlight %}

* оператор for по свойствам объекта

{% highlight js %}
var objectKey;
for (objectKey in obj) {
  if (obj.hasOwnProperty(objectKey)) {
    ...
  }
}
{% endhighlight %}

Здесь, `obj` &#8212; объект по свойствам которого мы хотим проитерировать, objectKey &#8212; имя свойства объекта `obj` на текущей итерации.


### Оператор while

Оператор цикла, который выполняется до тех пор, пока значение выражения внутри него истино.

{% highlight js %}
var i = 0;
mult = 1;
while (i > 5) {
  mult = mult * i;
  i++;
}
// в результате получим произведение всех целых чисел от 1 до 5 где = 120
{% endhighlight %}

Цикл можно сделать бесконечным, вписав вместо выражения true, тогда остановить его можно будет только оператором break.

{% highlight js %}
while (true) {
    ...
}
{% endhighlight %}

### Оператор break

Служит для прерывания цикла, внутри которого он вызывается.

{% highlight js %}
var numbers = new Array(1, 2, -3, -4, 5, -6);
var result = new Array();
for (index in numbers) {
  if (numbers[index] > 0) {
    result.push(number);
  } else {
    break;
  }
}
// result == [1, 2]
{% endhighlight %}

### Оператор continue

Выполнение оператора continue внутри цикла приводит к переходу на следующую итерацию.

{% highlight js %}
var numbers = new Array(1, 2, -3, -4, 5, -6);
var result = new Array();
for (index in numbers) {
  if (numbers[index] > 0) {
    result.push(number);
  } else {
    continue;
  }
}
// result == [1, 2, 5]
{% endhighlight %}

### Оператор with

Устанавливает объект по умолчанию для набора операторов.
Предположим,у нас есть объект car со свойствами color и max_speed.
Если мы хотим вывести информацию о нём в переменную info, то делаем так:

{% highlight js %}
var info;
info = "Цвет машины - " + car.color + ". Максимальная скорость - " + car.max_speed + ".";
{% endhighlight %}

Если мы применим оператор with, то код преобразиться следующим образом:

{% highlight js %}
var info;
with (car) {
  info = "Цвет машины - " + color + ". Максимальная скорость - " + max_speed + ".";
}
{% endhighlight %}

Источники

1. [Операторы JavaScript](http://www.codenet.ru/webmast/js/operators.php)
2. [Справочник javascript: Array](http://javascript.ru/Array)
