---
title: Determine The IP Address Of A Domain
category: devops
---

The `dig` (domain information grouper) command can be used to get more
information about a domain name. To discover the IP address for a given
domain, invoke `dig` with the domain as an argument.

```bash
$ dig acm.illinois.edu

; <<>> DiG 9.8.3-P1 <<>> acm.illinois.edu
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 36167
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 0

;; QUESTION SECTION:
;acm.illinois.edu.		IN	A

;; ANSWER SECTION:
acm.illinois.edu.	7200	IN	A	192.17.239.36

;; Query time: 68 msec
;; SERVER: 208.67.222.222#53(208.67.222.222)
;; WHEN: Wed Apr 12 15:23:48 2017
;; MSG SIZE  rcvd: 50
```

The *answer section* tells me that the IP address for `acm.illinois.edu` is
`192.17.239.36`.

See `man dig` for more details.
