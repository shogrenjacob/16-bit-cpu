The Guin-16 includes 5 different flags to observe the current state of the processor. These flags are stored as a single 5-bit integer in the [Flag Register](registers.md#flag-register) of the CPU. Each bit of the flag register represents one of the flags, and the CPU checks the status of these bits to determine which flags are raised. These flags are raised when certain conditions are met in the value currently being operated on by the CPU. The flags are as follows:

## Zero
**Flag Register Bit 0**

Represented in the Flag Register by bit zero, the Zero Flag indicates that the current value in the data bus is zero. This can help with speeding up ALU operations, since any AND operation with zero will always be zero. This same fact can be helpful in other operations throughout the CPU. 

## Carry
**Flag Register Bit 1**

Indicates that the ALU add operation resulted in a carry bit to be used on next addition.

## Overflow
**Flag Register Bit 2**

Indicates that the last ALU operation resulted in a value that exceeds the 16-bit capacity of registers in the CPU. The Guin-16 will automatically reset on an overflow.

## Parity
**Flag Register Bit 3**

Indicates that the last ALU operation resulted in an odd-numbered result. This is done by checking the first bit of the result in the bus.

## Negative
**Flag Register Bit 4**

Indicates that the last ALU operation resulted in a value that is negative as specified by the [Two's Compliment](https://en.wikipedia.org/wiki/Two%27s_complement) number system. This is done by checking the 15th bit of the result in the bus.