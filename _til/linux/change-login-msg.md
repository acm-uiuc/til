---
title: Change the Login Message
category: linux
---

If you want to change the login message for just yourself change the configuration for your shell (ex. ```.bashrc```)

If you want to change the login message for everyone then look at ```/etc/update-motd.d```.  The directory contains a set of scripts that are executed in order on login. Modify these scripts with your welcome message
