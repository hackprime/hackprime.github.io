---
id: 655
title: Extract a number of zip and rar archives
date: 2013-01-27T06:44:18+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=655
categories:
  - it
tags:
  - bash
  - archive
---

```
sudo apt-get install unzip unrar
```

```
for x in *.zip; do unzip -o "$x" -d "${x//\.zip}" ; done
```

```
for x in *.rar; do unrar x "$x" ; done
```

Sources:

1. [How to unzip multiple files (encrypted) in a directory. &#8212; The UNIX and Linux Forums](http://www.unix.com/unix-dummies-questions-answers/39560-how-unzip-multiple-files-encrypted-directory.html)
2. [bash replace all matches of regex substring in string](http://www.linuxquestions.org/questions/linux-general-1/bash-replace-all-matches-of-regex-substring-in-string-435024/)
