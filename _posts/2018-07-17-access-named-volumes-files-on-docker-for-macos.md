---
title: 'Access named volumes files on Docker for Mac'
date: 2018-07-17T15:02:00+09:00
author: hackprime
layout: post
categories:
  - it
tags:
  - docker
  - macos
---

As for now, it is impossible to assign a specific path to the named docker volume. Moreover, due to architecture of Docker for Mac, accessing named volume files in Mac OS is not so obvious. So, the following guide should help.

1) Get your volume path
```
docker volume inspect xd-postgres-volume
```
Output:
```
[
    {
        "Driver": "local",
        "Labels": {},
        "Mountpoint": "/var/lib/docker/volumes/my-volume/_data",
        "Name": "my-volume",
        "Options": {},
        "Scope": "local"
    }
]
```
`Mountpoint` is what you need but this is not in your host system. The files of your named volumes stored inside the virtual box VM.

2) To access Docker VM Linux environment
```
screen ~/Library/Containers/com.docker.docker/Data/com.docker.driver.amd64-linux/tty
```
3) Then, `cd` to examined "Mountpoint" path
```
$ cd /var/lib/docker/volumes/my-volume/_data
```
[Source](https://stackoverflow.com/questions/19234831/where-are-docker-images-stored-on-the-host-machine/37642236#37642236)
