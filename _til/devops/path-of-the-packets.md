---
title: Path Of The Packets
category: devops
---

You can use `traceroute` to determine the network path packets follow from
your machine to some host server. For instance, if you want to know path
between a laptop (connected to airport wifi) and a website
[acm.illinois.edu](acm.illinois.edu), run the following
command:

```
$ traceroute acm.illinois.edu
traceroute to acm.illinois.edu (192.17.239.36), 64 hops max, 52 byte packets
 1  192.168.144.1 (192.168.144.1)  2.982 ms  1.680 ms  1.871 ms
 2  192.168.128.61 (192.168.128.61)  2.169 ms  2.710 ms  1.897 ms
 3  192.168.128.5 (192.168.128.5)  3.960 ms  3.179 ms  4.024 ms
 4  v904-gw1-external.scl-ca.nvidia.com (216.228.112.2)  2.734 ms  2.506 ms  2.264 ms
 5  206.121.188.9 (206.121.188.9)  6.109 ms  5.371 ms  5.829 ms
 6  cr1.sffca.ip.att.net (12.122.137.214)  5.493 ms
    12.122.137.234 (12.122.137.234)  7.265 ms
    cr1.sffca.ip.att.net (12.122.137.214)  9.137 ms
 7  12.122.149.145 (12.122.149.145)  5.220 ms  7.346 ms
    12.122.114.53 (12.122.114.53)  7.894 ms
 8  192.205.32.90 (192.205.32.90)  7.105 ms  8.684 ms  6.402 ms
 9  be3144.ccr22.sjc01.atlas.cogentco.com (154.54.5.101)  7.696 ms  7.556 ms
    be3142.ccr21.sjc01.atlas.cogentco.com (154.54.1.193)  7.678 ms
10  be3178.ccr21.sfo01.atlas.cogentco.com (154.54.43.69)  8.748 ms  9.010 ms
    be3179.ccr22.sfo01.atlas.cogentco.com (154.54.43.149)  8.096 ms
11  be3109.ccr21.slc01.atlas.cogentco.com (154.54.44.138)  24.739 ms  24.411 ms  23.584 ms
12  be3037.ccr21.den01.atlas.cogentco.com (154.54.41.146)  52.680 ms  52.044 ms  50.713 ms
13  be3036.ccr22.mci01.atlas.cogentco.com (154.54.31.90)  52.571 ms  52.094 ms  52.671 ms
14  be2831.ccr41.ord01.atlas.cogentco.com (154.54.42.166)  54.649 ms
    be2832.ccr42.ord01.atlas.cogentco.com (154.54.44.170)  54.021 ms  53.940 ms
15  be2522.agr21.ord01.atlas.cogentco.com (154.54.81.62)  52.740 ms
    be2524.agr22.ord01.atlas.cogentco.com (154.54.81.110)  54.418 ms
    be2521.agr21.ord01.atlas.cogentco.com (154.54.80.254)  54.325 ms
16  te0-0-2-0.nr11.b002329-6.ord01.atlas.cogentco.com (154.24.35.150)  53.949 ms
    te0-0-2-3.nr11.b002329-6.ord01.atlas.cogentco.com (154.24.35.154)  54.001 ms  54.207 ms
17  university-of-illinios-urbana.demarc.cogentco.com (38.104.99.42)  54.688 ms  54.161 ms  54.276 ms
18  t-ch1rtr.ix.ui-iccn.org (72.36.126.93)  53.203 ms  54.081 ms
    t-ch2rtr.ix.ui-iccn.org (72.36.126.77)  55.345 ms
19  t-710rtr.ix.ui-iccn.org (72.36.126.97)  55.499 ms
    t-710rtr.ix.ui-iccn.org (72.36.126.81)  53.679 ms
    t-710rtr.ix.ui-iccn.org (72.36.126.97)  55.999 ms
20  72.36.126.101 (72.36.126.101)  58.040 ms  57.479 ms
    t-ur1rtr.ix.ui-iccn.org (72.36.127.86)  58.757 ms
21  iccn-ur1rtr-uiuc1.gw.uiuc.edu (72.36.127.2)  57.610 ms  58.595 ms
    t-ur1rtr.ix.ui-iccn.org (72.36.126.65)  57.785 ms
22  iccn-ur1rtr-uiuc1.gw.uiuc.edu (72.36.127.2)  58.272 ms
    t-exite1.gw.uiuc.edu (130.126.0.201)  57.852 ms
    iccn-ur1rtr-uiuc1.gw.uiuc.edu (72.36.127.2)  59.742 ms
```

See `man traceroute` for more details.
