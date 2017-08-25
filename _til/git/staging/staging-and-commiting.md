---
title: Staging and Committing
category: git/staging
---

## Staging 
To add a set of changes to a project using git you must commit them and in order to commit them you must stage them.
There are gour common staging commands:
```sh
git add .
```
> stages new and modified, without deleted

```sh
git add -A
```
> stages All

```sh
git add -u
```
>  stages modified and deleted, without new

```sh
git add --interactive
```
> pick specific files to commit via CLI

You can also just pass paths to files / directories as arguments to git add to stage them 

To see what is staged you can run:
```sh 
git status 
```
And if you want to unstage everything run:
```sh 
git reset 
```

## Commiting 
To commit typically people use:
```sh
git commit -m "COMMIT MESSAGE"
```

## A Faster Way
It is a common practice to just stage all tracked files and commit them.
So you can combine the commit and staging steps with 
```sh
git commit -am "commit message"
```
or 
```sh
git commit -m --interactive "commit message"
```
if you want to stage certain files 
