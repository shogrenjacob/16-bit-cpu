# Memory Layout

The memory layout of the Guin-16 is quite straightforward. Program memory starts at 0x0 and takes the entire first page of memory _(0x0 - 0xfe)_. The reset vector is from _0xfffd - 0xffff_ and is there to send a reset signal to the Guin-16. This concludes processing of the program and resets all components of the CPU. 

This memory layout is mapped out visually below:

![Memory Layout](imgs/new-mem.svg)