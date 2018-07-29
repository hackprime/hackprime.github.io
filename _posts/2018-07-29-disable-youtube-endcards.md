---
title: 'Hide end cards at the end of Youtube videos'
date: 2018-07-29T20:52:40+09:00
author: hackprime
layout: post
categories:
  - it
tags:
  - css
  - youtube
---

The Youtube service provides videomakers with a feature called "end cards". This is a big rectangle links with suggestions what to see on the current channel that you can see at the end of video. But sometimes end cards could make difficult to see the video itself.

There is no a way to disable them at the current time, but this CSS hack will help us

```
.ytp-ce-element {
    display: none !important;
}
```
