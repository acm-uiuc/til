---
title: List Disks and Mount Points
category: linux
---

You can list the disks and mount points using the following command 
```
$ lsblk
```

and you will get an output like this 

```
NAME    MAJ:MIN RM   SIZE RO TYPE  MOUNTPOINT
sda       8:0    0 111.8G  0 disk
├─sda1    8:1    0  18.7G  0 part  [SWAP]
├─sda2    8:2    0  46.6G  0 part  /
└─sda3    8:3    0  46.6G  0 part  /gpu01
sdb       8:16   0   3.7T  0 disk
└─sdb1    8:17   0   3.7T  0 part
  └─md0   9:0    0  14.6T  0 raid0 /vault
sdc       8:32   0   3.7T  0 disk
└─sdc1    8:33   0   3.7T  0 part
  └─md0   9:0    0  14.6T  0 raid0 /vault
sdd       8:48   0   3.7T  0 disk
└─sdd1    8:49   0   3.7T  0 part
  └─md0   9:0    0  14.6T  0 raid0 /vault
sde       8:64   0   3.7T  0 disk
└─sde1    8:65   0   3.7T  0 part
  └─md0   9:0    0  14.6T  0 raid0 /vault
  ```
