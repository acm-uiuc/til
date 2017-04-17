---
title: Install Ruby with rbenv
category
---

Ruby comes by default with MacOS and is easy to install with ```apt-get``` 
but it is recomended using a version manager to manage your ruby installs.

There are two popular ones ```rvm``` and ```rbenv```, it seems most people have moved to ```rbenv```
and its CLI is a bit easier so that is the one we are going to address. 

First start by installing ```rbenv```

```sh
#macOS
brew install rbenv
#Ubuntu 14.04+
sudo apt-get install autoconf bison build-essential libssl-dev libyaml-dev\
libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
```
Then load the necessary modifications to your PATH into your terminal environment file 

```sh
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc (~/.profile / ~/.zshrc)
echo 'eval "$(rbenv init -)"' >> ~/.bashrc (~/.profile / ~/.zshrc)
source ~/.bashrc (~/.profile / ~/.zshrc)
```

Then clone the ruby build plugin into your ```rbenv``` install 

```sh
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
```
Now you can use rbenv to install your desired version on ruby 

```sh
rbenv install 2.3.1
```

To set a version as the default version for your entire computer run

```sh
rbenv global 2.3.1
```
Once you have ruby installed it is recommended you install ```bundler``` which is the package manager for ruby

```sh
gem install bundler
```
You should now be good to go to start working on your ruby projects 


To learn more see: https://github.com/rbenv/rbenv
