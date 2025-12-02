# Addressing Modes
In the Guin-16, addressing modes are used to tell the CPU where in memory it can find the data to be used in a given instruction. This allows for data to be stored separately from the instruction stream rather than needing the data for a given instruction to be stored sequentially in memory.

## Implicit
**Addressing Code: x0**

For many instructions in the Guin-16, there is not extra data required to perform the instruction. An implicit addressing mode denotes this case and immediately performs the instruction.

## Immediate
**Addressing Code: x0**

If an instruction uses immediate mode, it will use the word in the memory address directly ahead of it as a data word. Although Immediate shares an addressing code with Implicit, the type of instruction will determine which is used. An instruction using an implicit addressing mode will already have completed before an immediate instruction processes.

## PageAhead
**Addressing Code: x5**

PageAhead mode tells the CPU to fetch the address exactly x pages ahead the current instruction's address to use as a data word, where x is specified by the [Page Register](registers.md/#page-register)

## PageBehind
**Addressing Code: x2**

PageAhead mode tells the CPU to fetch the address exactly x pages behind the current instruction's address to use as a data word, where x is specified by the [Page Register](registers.md/#page-register)

## Absolute
**Addressing Code: x4**

Absolute mode tells the CPU that the next word in memory is the address to the actual data to be used by the instruction.

## AbsoluteX
**Addressing Code x1**

AbsoluteX mode tells the CPU to get the next word in memory and add it to the X Register to get the address of the data to use in the instruction.

## AbsoluteY
**Addressing Code x6**

AbsoluteY mode tells the CPU to get the next word in memory and add it to the Y Register to get the address of the data to use in the instruction.

## Indirect
**Addressing Code x7**

Indirect mode tells the CPU to use the next word as an address to a word in memory. This word is the address of the _actual_ word of data to use. 
> Note: You can think of this as using absolute mode twice, once to get the address to use, and then again to get the actual data.