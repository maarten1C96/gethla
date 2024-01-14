gethla (macOS)
==============

Based on gethla by a-v-s (André van Schoubroeck). Simple tool to get the ST-Link Serial String for use with OpenOCD or PlatformIO. When multiple ST-Links are connected,
one must specify the serial number to connect. As the ST-Link V2 uses a serial number consisting of non-ascii characters, it is not straight forwards to capture the serial number using for example lsusb.

    $ lsusb -d 0483: -v | grep Serial
              Serial Number: ?
              Serial Number: B

Running
=======

To run the script, first change *get_serials_macos.sh* permissions with the chmod command.

```
    $ chmod +x ./get_serials_macos.sh
```

Then run the file:

    $ ./get_serials_macos.sh

	Executable file 'gethla' generated

	Running executable file 'gethla'

	Scanning for connected STLink
	STLink V2   hla_serial \x18\x00\x23\x00\x02\x00\x00\x30\x41\x31\x57\x4E
	STLink V2   hla_serial \x42\x00\x62\x00\x0E\x00\x00\x54\x32\x33\x57\x4E

Using
=====

In the platformio.ini file, specify the serial settings as follows:

	upload_flags = -c hla_serial \x18\x00\x23\x00\x02\x00\x00\x30\x41\x31\x57\x4E  
