---
id: 435
title: 'python: Bad magic number ImportError'
date: 2012-06-30T05:40:02+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=435
categories:
  - it
tags:
  - bash
  - django
  - python
---

Подобная ошибка всплывает, когда вы пытаетесь запустить уже скомпилированный `*.pyc` файл версией питона, которая отличается от той, в которой он изначально компилировался. Решение: удалить и перекомпилировать. Но что если это не просто маленький скрипт и большое приложение с кучами папок-подпапок? Тут нам на помощь приходит bash:

```
~/your_projects_dir/project_name$ find -name *.pyc | xargs rm
```

**Источники:**

1. [python &#8212; What's the bad magic number error? &#8212; Stack Overflow](http://stackoverflow.com/questions/514371/whats-the-bad-magic-number-error)
2. [Полезные команды Linux — Movable Type Wiki](http://movable-type.ru/wiki/Полезные_команды_Linux)
