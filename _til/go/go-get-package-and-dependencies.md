---
title: Install Everything At Once
category: go
---

##  ```go get/install``` a Package and it's Dependencies at the same time 

Packages may have a large amount of dependencies and so instead of forcing users to install them one by one 
go's get tool provides a syntax to get and install a package and its dependencies in a single command

```sh
go get -u github.com/acm-uiuc/arbor/...
```

This command should get and install ```arbor``` and its dependencies
