---
title: .gitignore
category: git/tracking
---

Typically there are compiled files or very large generated files that you don't want tracked on remotes. So instead of being careful about what you do want to add and what you don't you can just use a gitignore to tell git what not to track. 

To create a gitignore in the root directory of the repo make a file ```.gitignore```.
Then list paths to files or patterns to ignore 

It is that easy. 

P.S. Github has gitignore templates for repos, if you try to create a repo online or try to create a file called ```.gitignore```, Github will give you a list of templates based on the language. 
