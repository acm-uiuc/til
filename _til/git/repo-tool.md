---
title: Repo Tool
category: git
---

When getting into more complicated software development, you will usually end
up having code split in multiple repos. Groot, Merch and the GPU Cluster
are all examples of modular projects with multiple repos. 

There are a couple ways to manage all the repos you use. Git submodules are one
and they are really good for vendoring code that you don't actively develop in 
parallel with the code you are working on. It works by checking out a specific 
commit from another repo.

Another tool more suited to parallel development is ```repo```. It is a tool
created by Google for use on Android, to manage the various repos the project has.

Many ACM projects also use ```repo`` to manage their sub repos. 

## Installing ```Repo```

Installing repo is easy, many OSes have it included in their package manager

```sh
brew install repo 
```

```sh
apt install repo
```

## Managing Repos

Managing repos is done through a manifest in the format of an xml file. 
Within the xml file, the root git server is listed and the subdirectories 
of the repos are listed with their final arrangement on the client. 

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
  <!-- Location of the git server (notice the protocol definition) --> 
	<remote name="origin" fetch="ssh://git@github.com/acm-uiuc/"  />

  <!-- Default name for remote and branch --> 
	<default remote="origin" revision="master" />
  
  <!-- Path to place each repo on client and the name of the subdirectory on the git server for each repo --> 
	<project path="." name="merch" />
	<project path="merch-embedded" name="merch-embedded" />
	<project path="merch-hardware" name="merch-hardware" />
	<project path="merch-ios" name="merch-ios" />

</manifest>

```

Call this file ```default.xml``` and place it at the root of your main repo

> Note: It is recommended to use ssh with repo since you then don't need to use a password for every ``clone/push/pull```

## Getting All Your Code

To begin with, ```repo``` needs a directory to work in. So create one 

```sh
mkdir merch 
```

Then you must initialize ```repo``` in that directory 

```sh
repo init -u git@github.com:acm-uiuc/merch
```

Finally pull the latest changes 

```sh
repo sync 
```

You should now have all your code placed in the right places to start working 

To commit code back up use the standard ```git``` workflow 

## Cool Abilities 

Repo also allows you to do some powerful things

For instance 

```sh
repo forall 

```
Runs a command in every repo, good for pushing up a bunch of changes.

For the full reference checkout https://source.android.com/source/using-repo
