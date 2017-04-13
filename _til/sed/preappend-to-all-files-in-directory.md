---
title: Preappend a String to the Start of all Files in a Directory 
category: sed
---

Nifty snippet to preappend a string to all files in a directory 

```sh
sed -i '1i STRING_TO_PREAPPEND' *
```