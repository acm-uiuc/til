---
title: Awk Cookbook
category: bash
---

This is a collection of snipits of common tasks 

#### Remove everything before the last space 
```sh
awk {'print $NF'}
```

#### Remove a substring from the end of each line in a file 
```sh
awk '{gsub(/{SUB_STRING]$/,""); print}' file.txt
```
