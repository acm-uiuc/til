---
title: Install Ubuntu 
category: linux
---

Do you want to move from Windows into a UNIX like dev envirnoment? Ubuntu is an easy way to get your feet wet and try out Linux.

## Basic Installation

Ubuntu ships with a very straight forward installer and makes set up a snap. Here are the only steps:
* Choose a language and keyboard layout (Usually English-US for both)
* Connect to a network (Optional, convenient to install updates during installation)
* Choose to install updates
* Choose to install 3rd party non-free items (Flash, MP3, etc. I usually select yes as it makes the user experience much easier)
* Create a user and hostname
* Partition the disk (See below)
* Choose your location for time/date
* Sit back, relax, and wait a few minutes for installation to finish

## Partitions

SWAP: Space reserved on the disk designed to provide backup memory space for the system. 

Boot: Partition holding the GRUB2 bootloader. This is generally handled by the installer. Modify only if necessary.

Home: This partition will store all of the user data. On systems with only one disk and one Linux installation, there isn't always a need to sperate this form the root partition

Root: This partition is the meat and potatoes of the systems. It holds all of the core utilities and applications.

### Recommendation:

I generally use 1.5x my system RAM for swap and the rest of the disk space as root. By default the root partiition will encompass home and boot information, and the default Ubuntu installer will configure the bootloader correctly for most use cases.

## Dual Booting

Dual booting is when you run both Linux and Windows on the same machine. This can be achieved by creating a partition on the disk for Linux and installing it there. The Ubuntu installer will set up GRUB2 in order to show you both Windows and Ubuntu as options to boot from. This configuration is great for beginners as it allows you to keep using Windows and learn Linux over time.
