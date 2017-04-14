---
title: Setting Up Go
category: go
---

While installing the golang executable is relatively straight forward:

```sh
#macOS
brew install go
#Ubuntu 14.04+
sudo curl -O https://storage.googleapis.com/golang/go1.7.linux-amd64.tar.gz
sudo tar -xvf go1.7.linux-amd64.tar.gz
sudo mv go /usr/local
```
Setting up the go workspace is a bit more invloved. Go expects code to reside in specific locations and you must tell go where these locations are.

Within your ```.profile```, ```.bashrc``` or the equivelent for whatever shell you are using set the following variables:

First set the ```GOROOT```, this is where typically system wide packages are held.
Good defaults would be:
```sh
#macOS 
export GOROOT=/usr/local/opt/go/libexec
#Ubuntu 14.04+
export GOROOT=/usr/local/go
```
Next you need to setup your workspace 

Go workspaces can reside where you want but the need a particular structure:
```
| _ [SOME DIRECTORY]
    | _ bin 
    | _ lib
    | _ src
```
You now need to tell go where this workspace is by:
```sh
export GOPATH=[SOME DIRECTORY]
```

Now you should be ready to go after you load in the enviorment: ```source  .profile, .bashrc or the equivelent for whatever shell```

Go projects typically are located according to url, so ACM's groot-api-gateway package will be located at ```[SOME DIRECTORY]/src/github.com/acm-uiuc/groot-api-gateway```

Maintaining such consistency allows you to use tools like ```go get``` and ```go install``` with little trouble as they will follow this convention
