---
title: 'Mount ext4 filesystem on macOS'
date: 2018-07-29T20:44:07+09:00
author: hackprime
layout: post
categories:
  - it
tags:
  - macos
  - ext4
  - fuse
---

1) Install ext4fuse.

```
brew cask install osxfuse
brew install ext4fuse
```

2) Select partition.

```
diskutil list

/dev/disk3 (external, physical):
   #:                       TYPE NAME                    SIZE       IDENTIFIER
   0:      GUID_partition_scheme                        *3.0 TB     disk3
   1:       Microsoft Basic Data                         3.0 TB     disk3s1
```

3) Mount.

```
sudo ext4fuse /dev/disk3s1 ~/Disk -o allow_other
```

Works in El Capipan and upper.
