## Write down the Hexadecimal values:
00000000  7f 45 4c 46 02 01 01 00  00 00 00 00 00 00 00 00  |.ELF............|
00000010

First 4 - 7f 45 4c 46

## What does this sequence represent in ASCII?
7f is non-printable.
45 -> 'E'
4c -> 'L'
46 -> 'F'

This means that the executable is ELF(Executable and Linkable) Binary.

## Why does the Operating System need this ”Magic Number” at the start of the file?
The magic number at the start of a file is needed so that the Operating System can immediately identify the file format.

## Is your executable Little Endian or Big Endian?
The 5th Byte = 01 which is for Little Endian(would be 02 for Big Endian).

## If the integer 0x12345678 is stored in memory on a Little Endian machine, write the sequence of bytes (low address to high address)

Bytes => 12 34 56 78
For Little Endian, sequence would be 78 56 34 12