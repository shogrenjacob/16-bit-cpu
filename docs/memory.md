# Memory Layout

The memory layout of the Guin-16 is quite straightforward. The first page of memory is reserved for the Stack. The next page to 0xFFFC is free memory that can be used for programs or other system needs. Finally, from 0xFFFD to the end of memory is the reset vector, which resets the CPU. 

This memory layout is mapped out visually below:

![Memory Layout](imgs/mem-layout-svg.svg)