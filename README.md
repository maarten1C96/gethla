gethla (macOS)
==============

A macOS-specific version of the `gethla` utility, originally written by André van Schoubroeck (a-v-s). The `gethla` utility facilitates in acquiring the ST-Link serial string of each connected device, to be used in for example OpenOCD and PlatformIO. This tool is particularly useful for handling ST-Link non-ASCII serial numbers, which are not easily obtained through standard commands like `lsusb`.

```
$ lsusb -d 0483: -v | grep Serial
              Serial Number: ?
              Serial Number: B
```

Prerequisites
=============

Ensure you have `lsusb` installed on your macOS, which might require installing additional packages or using Homebrew.

```
brew install lsusb
```

Steps to run
============

To run the script, first change *get_serials_macos.sh* permissions with the chmod command.

```
$ chmod +x ./get_serials_macos.sh
```

Then run the file:

```
$ ./get_serials_macos.sh

    Executable file 'gethla' generated

    Running executable file 'gethla'

    Scanning for connected STLink
    STLink V2 adapter serial: \x18\x00\x23\x00\x02\x00\x00\x30\x41\x31\x57\x4E
    STLink V2 adapter serial: \x42\x00\x62\x00\x0E\x00\x00\x54\x32\x33\x57\x4E
```

Usage within PlatformIO
=======================

In the *platformio.ini* file, specify the serial settings via upload_flags as follows:

```
    upload_flags = -c adapter serial \x18\x00\x23\x00\x02\x00\x00\x30\x41\x31\x57\x4E
```
