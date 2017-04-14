---
title: Computing in College
category: uiuc 
---

Probably the most common question a computer science student will get is "what computer should I buy?".
The basic answer is something that can run a UNIX-Like Development enviorment. With Windows 10, Windows becomes 
a legitimate option with the Linux Subsystem. However it is still recommended you have something that runs 
native Linux or UNIX (MacOS), due to Windows still lacking feature parity.

## Good Options for Computers 
I know a lot of you are buying new computers for college and that many of those computer are Macs. 

Macs are a good choice due to build quality, its UNIX based OS and the development enviorment that comes with it. 
However Macs are expensive so here are some other good options:

- Dell XPS
- Dell Precision
- HP Spectere 15
- Any Lenovo **ThinkPad**
- ASUS ZenBook Pro
- Surface Book
- Razer Blade / Blade Stealth
- System 76 Computers

The recommendation with getting any of these computers is to dual boot Linux. Ubuntu (versions ending .04 are best 
as they will be best supported) or any of its variants (Mint, Xubnutu, etc.) would be good accessible choices with 
large ammounts of online documentation. Having a native Linux system to work in will really help you be productive in Computing classes. 
[Link to Dualboot]()

While having a top of the line computer is 100% not necessary, having one that will not limit your productivity is really important. Look for standard I/O layouts, Processors that are not mobile class and good battery life. 
Computers that are not recommended are:

- Macbook
- Surface Pro

### Dongles

You may want to purchase a few adapters for your new computer. You will need to be able to give 
presentations from your laptop. All of the projectors/televisions you will be presenting on have VGA 
cables attached to them (they have now upgraded many of them to have HDMI support in engineering buildings). 
So be sure to buy a VGA adapter. If you are living in a dorm, you may also want to buy an ethernet adapter for faster connection. 

## Labs
If you don’t want to work on your own laptop, you can definitely complete your assignments at the numerous 
computers in the labs at Grainger Library, Engineering Hall, Siebel Center, etc. Also, if you need to work 
on the same desktops that are in the labs, you will be given instructions on how to ssh (or remotely access) 
them from your own laptops. 

There are plenty of resources on campus to get your work done. Engineering IT,manages both Windows and 
Linux boxes that have required software pre-installed. Most computer labs across the Engineering side 
will have either Windows or Linux or both. So you can use any of the EWS labs in Siebel, ECE Building, DCL, Mechanical Engineering, etc. 

## Doing your Assignments 
Most people will have their own laptops, but this is risky as you proceed in your undergraduate career. In classes that require you to submit code, your code will be compiled and evaluated on EWS (University machines). EWS does not use always use the same development environments that most people are used to. The classic example is CS 225 where most people with previous C++ experience have GCC (g++) but the university uses Clang (clang++). Code that compiles without errors or warnings with GCC may still throw warnings in clang which will cause the graders to deduct points. That and libraries that aren't necessarily the same are why professors always warn students to test their code on EWS. 

However there are ways to develop on EWS with the freedom of a laptop and that is using ssh or FastX. Both allow you to remotely login to an EWS instance. FastX gives you a view of your desktop just like any remote desktop program, but it’s a bit slow. With ssh you only will get a terminal so typically people who use this option are fairly adept at vim, emacs or nano, however because there are no graphics it’s fast. For people who want to use ssh but want a graphical text editor, this is a little command I use to allow that: ```ssh -XC -c blowfish-cbc,arcfour [netid]@remlnx.ews.illinois.edu```. Then I can run gedit or sublime using ```[name of editor] &```. 

## Terminal
As computer scientists, you will be spending a lot of time in what is called the terminal. Basically this is a program on most Unix like operating systems (Mac OS and Linux) and  Windows now, that strips away the Graphical User Interface and lets the user use programs that don’t have a graphics wrapper (compilers, scripts, shells, etc.) People typically have a couple files (.bashrc, .profile, etc.) that customize the terminal every time it’s opened. Some classic ones are renaming commands like clear (to clear the terminal) to c or change ls (to list files in a folder), so ls actually runs ```ls -FG``` (which shows colors for different types of files). The .bashrc is a great way to start tweaking your development process. If you want to learn more here is a quick [tutorial](https://www.digitalocean.com/community/tutorials/an-introduction-to-useful-bash-aliases-and-functions)

## ACM Compute Resources 
ACM also maintains its own computing resources. We manage a set of high end workstations for general use, and a set of 
servers for various things such as general development, parallel and distributed computing work, and a GPU cluster for AI training. 

