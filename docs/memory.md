# Memory Layout

The memory layout of the Guin-16 is quite straightforward. The Stack starts at 0x0 and takes the entire first page of memory _(0x0 - 0xfe)_. Program memory starts immediately after at the second page of memory _(0xff-fffd)_. Finally, the reset vector is from _0xfffd - 0xffff_ and is there to send a reset signal to the Guin-16. This concludes processing of the program and resets all components of the CPU. 

This memory layout is mapped out visually below:

![Memory Layout](imgs/mem-layout-svg.svg)