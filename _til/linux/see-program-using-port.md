---
title: List Programs Bound to Port
category: linux
---

Sometimes when trying to start an app you find that the port is in use. 
You can figure out what that program is by running: 

```
$ lsof -i :8000
COMMAND  PID  USER   FD   TYPE   DEVICE SIZE/OFF NODE NAME
squid3  1289 proxy   15u  IPv6 14810490      0t0  TCP *:8000 (LISTEN)
```

To see more information based on the ```pid```: 

```
$ ps -fp 1289
UID        PID  PPID  C STIME TTY          TIME CMD
proxy     1289     1  0 09:48 ?        00:00:00 /usr/sbin/squid3 -N -f /etc/squid-deb-proxy/squid-deb-proxy.conf
```

Then you can kill the program with 
```
$ kill 1289
```
