---
id: 419
title: 'flash: фикс бага с "синими лицами" в Ubuntu'
date: 2012-05-24T11:51:45+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=419
categories:
  - it
tags:
  - flash
  - linux
  - ubuntu
---

У меня Ubuntu Linux 12.04 и Flash Player последней на данный момент версии. Убунту на десктоп я поставил буквально позавчера, и столкнулся с такой проблемой: в видео, проигрывыемых на сайте youtube.com, преобладать синий цвет. У людей буквально синие лица, как будто они представители планеты Гамилус из аниме про крейсер Ямато. <!--more-->

Решается это двумя способами:

1) Отключить аппаратное ускорения в свойствах Flash (ПКМ > Settings > снять галочку Enable hardware acceleration).

2) Может случиться так, что окно настроек вообще не будет реагировать на клики мыши (Tab, Shift+Tab и Space при этом работают, но только чекбокс, почему-то, не дизейблится =/ ). В этом случае просто разверните Flash-объект во весь экран, тогда чекбокс станет доступным.

3) Если первые 2 пункта не помогли: нужно создать директорию **/etc/adobe/** (если её нет), в ней создать файл **mms.cfg** и туда записать (опять же, если файл есть, то дописать/поменять):

```
EnableLinuxHWVideoDecode=1
OverrideGPUValidation=true
```

Или двумя командами:

```
sudo mkdir /etc/adobe
echo -e "EnableLinuxHWVideoDecode=1\nOverrideGPUValidation=true" | sudo tee /etc/adobe/mms.cfg > /dev/null
```

Источники:

1. [Записки: Обновление Flash вышло &#171;синим&#187;](http://karapuzz.blogspot.com/2012/03/flash.html)
2. [Видео стало синего цвета, что делать?](http://forum.ubuntu.ru/index.php?topic=171793.0)
3. [Неверные цвета при просмотре &#171;Смешариков&#187; на Youtube (Ubuntu 11.10) &#8212; Форум русскоязычного сообщества Ubuntu](http://forum.ubuntu.ru/index.php?topic=189021.0)
