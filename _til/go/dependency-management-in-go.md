---
title: Dependency Management in Go
category: go
---

Since things in the go world change constantly, new changes to libraries may cause your code to break. 
Other langauages (e.g. python, ruby, javascript) solve this issue using a package manager (pip, bundler/gem, npm/yarn) 
which will record specific versions of libraries in a file so that when others use your code they will 
install the same versions of each library.
Some package managers will also install libraries in a directory in the project, so that projects can use different versions 
of the same library. This process is called vendoring.

Go 1.5 introduced experimental vendoring, which in Go 1.7 is a standard feature. They also introduced a new official dependency management 
tool called ```dep``` which is now in alpha 

## How to use ```dep```

### Install ```dep```
To install dep use the standard go get 

```sh
go get github.com/golang/dep/...
```

Now that go is installed assuming that ```$GOPATH/bin``` is in your ```$PATH``` you should now have a command called ```dep```

### Using ```dep```


#### To start tracking library versions for a package use 

```sh
dep init 
dep ensure --update
```

This will create a ```Gopkg.toml``` file and a ```Gopkg.lock``` file and a directory called ```vendor``` which will contain the dependencies.
It's usually recommended that you track both of the files in your git repository but not the ```vendor``` directory

#### Install dependencies after clone

```sh
dep ensure 
```

#### Updating package versions 

To update all of the package versions to the latests 
```sh
dep ensure -update
```

To update a single package to a specfic version 
```sh
dep ensure github.com/pkg/errors@^0.8.0
```
### Making your project compatable with ```dep```
Go expects a lot of things to be setup in a particlar way. 
The way a package is referenced is by its url, just like with ``go get``` 
It also uses git tags to refer to versions and those versions have soem what of an expected format v[Version number]-[Any ther message]
For example 
```
v0.1.0
v0.1.0-beta 
v0.1.0-rc
```
are valid but,

```
v0.1.0rc
v0.1.0b
```
are not. 

Github and Gitlab have convient interfaces to tag releases, just follow their instructions and it should be fine. 




