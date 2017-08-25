---
title: Install Ubuntu 
category: linux
---

Do you want to move from Windows into a UNIX like dev environment? Ubuntu is an easy way to get your feet wet and try out Linux.

## Creating bootable media
Ubuntu comes from the web as a .iso file.
### Windows
* Download the Ubuntu image from [Canonical](https://www.ubuntu.com/download)
* Download [Rufus](https://rufus.akeo.ie/)
* Acquire a a USB flash drive of at least 2GB
* Run Rufus and select your USB from the Devices dropdown
* Click the CD ROM icon next to the FreeDOS menu entry and select your Ubuntu .iso
* Click Start
* Select yes if prompted to download/install Syslinux
* Select ISO mode when prompted between ISO and DD modes
* Confirm that the USB you selected is correct
* Press OK and sit back!

### Mac
https://tutorials.ubuntu.com/tutorial/tutorial-create-a-usb-stick-on-macos#0

### Other Ubuntu Install
Ubuntu packages a startup disk creator. Launch the application and follow the instructions

## Basic Installation

Ubuntu ships with a very straight forward installer and makes set up a snap. Here are the only steps:
* Plugin the bootable media into your computer with it shut down
* Enter the Bootloader (typically pressing F2, F12 or Del before the OS Loads)
* Select the USB drive to boot from
* Choose a language and keyboard layout (Usually English-US for both)
* Connect to a network (Optional, convenient to install updates during installation)
* Choose to install updates
* Choose to install 3rd party non-free items (Free as libre, not cost wise. The non-free items are non-open source, but will cost you nothing)
* Create a user and hostname (hostname is the name of your computer)
* Select the relevant install option (Install along side or overwrite current OS)
* Choose your location for time/date
* Sit back, relax, and wait a few minutes for installation to finish

## Advanced Setups
Sometimes it is required to make a more complex partition scheme 

### Partitions
Partitioning is required if you want more complicated layouts for you storage i.e you want all your documents on one disk but the os on another, or you are dealing with a volatile system and need to insure exact partition layouts.

SWAP: Space reserved on the disk designed to provide backup memory space for the system. 

Boot: Partition holding the GRUB2 bootloader. This is generally handled by the installer. Modify only if necessary.

Home: This partition will store all of the user data. On systems with only one disk and one Linux installation, there isn't always a need to sperate this form the root partition

Root: This partition is the meat and potatoes of the systems. It holds all of the core utilities and applications.

### Recommendation:

I generally use 1.5x my system RAM for swap and the rest of the disk space as root. By default the root partiition will encompass home and boot information, and the default Ubuntu installer will configure the bootloader correctly for most use cases.

## Dual Booting

Dual booting is when you run both Linux and Windows on the same machine. This can be achieved by creating a partition on the disk for Linux and installing it there. The Ubuntu installer will set up GRUB2 in order to show you both Windows and Ubuntu as options to boot from. This configuration is great for beginners as it allows you to keep using Windows and learn Linux over time.
