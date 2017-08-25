---
title: Add a User to the Sudoers Group
category: linux
---

Use the ```usermod``` command to add the user to the sudo group.

```
usermod -aG sudo username
```

By default, on Ubuntu, members of the sudo group have sudo privileges.


As the new user, verify that you can use sudo by prepending ``sudo`` to the command that you want to run with superuser privileges.

```
sudo command_to_run
```

For example, you can list the contents of the ```/root``` directory, which is normally only accessible to the root user.

```
sudo ls -la /root
```

The first time you use sudo in a session, you will be prompted for the password of the user account. Enter the password to proceed.

```
Output:
[sudo] password for username:
```

If your user is in the proper group and you entered the password correctly, the command that you issued with sudo should run with root privileges.
