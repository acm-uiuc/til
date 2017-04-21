---
title: Sed Cookbook
category: sed
---

This is a collection of snipits of common tasks 

#### Remove everything before the last space 
```sh
sed 's/.* //'
```

#### Remove last character from every line 
```sh
sed 's/.$//' file > file.nolast
```

#### Remove substring from the end of very line
```sh
sed 's/[SUBSTRING]$//' file > file.noss
```
