---
id: 674
title: wmv to avi, wmv to mp4
date: 2013-07-05T08:57:14+00:00
author: hackprime
layout: post
guid: http://zeta.gundam.su/?p=674
categories:
  - it
tags:
  - ubuntu
  - video
---

[«wmv to avi» on linuxscrew.com](http://www.linuxscrew.com/2007/09/23/convert-wmv-into-avi-with-ubuntu/)

```
sudo apt-get install mencoder
mencoder in.wmv -ofps 23.976 -ovc lavc -oac copy -o out.avi
```

[«wmv to mp4» on ubuntuforums.org](http://ubuntuforums.org/showthread.php?t=1839503)

```
sudo apt-get install avidemux
avidemux --force-alt-h264 --load "in.wmv" --audio-bitrate 224 --audio-codec aac --video-codec x264 --save "$out.mp4" --output-format MP4 --quit
```
