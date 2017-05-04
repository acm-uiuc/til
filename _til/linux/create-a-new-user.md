---
title: Create a New User
category: linux
---

Use the ```adduser``` command to add a new user to your system.

```
$ sudo adduser username
```
        
Set and confirm the new user's password at the prompt. See [Password Management](til.acm.illinois.edu/security/password-management)

```
Set password prompts:
Enter new UNIX password:
Retype new UNIX password:
passwd: password updated successfully
```
  
Follow the prompts to set the new user's information. It is fine to accept the defaults to leave all of this information blank.

```
User information prompts:
Changing the user information for username
Enter the new value, or press ENTER for the default
    Full Name []:
    Room Number []:
    Work Phone []:
    Home Phone []:
    Other []:
Is the information correct? [Y/n]
```
For how to make the user a ```sudoer``` go to [Add a User to the Sudoers Group](til.acm.illinois.edu/linux/add-user-to-sudoers)

For how to change your password go to [Change Password](til.acm.illinois.edu/linux/change-password)
