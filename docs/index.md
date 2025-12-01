# Overview

Guin-16 is a 16-bit CPU based on the [Von Neumann architecture](https://en.wikipedia.org/wiki/Von_Neumann_architecture). This CPU was built as a capstone project at Youngstown State University. Guin-16 was built using the [Logisim-Evolution](https://github.com/logisim-evolution/logisim-evolution) digital logic simulator and utilizes many of the features of the program.

Guin-16 features a custom instruction set with instructions and addressing modes inspired by the [6502 processor](https://en.wikipedia.org/wiki/MOS_Technology_6502) and the [Astro-8 computer](https://sam-astro.github.io/Astro8-Computer/). There are 26 unique instructions, some of which having multiple addressing modes available for efficient memory management.

A unique features of the Guin-16 is the [Page Register](registers.md), which holds the index of a page in memory that can be accessed more efficiently than a typical relative memory access. This can be thought of as a dynamic [zero page](http://www.6502.org/users/obelisk/6502/addressing.html#ZPG), which is utilized in the 6502 processor.

## Installation
You can install and use the Guin-16 yourself, the circuit (as well as the source for this site and my presentation) can be found [here](https://github.com/shogrenjacob/16-bit-cpu). More information on installation requirements and running programs can be found on the [installation page](installation.md).

## Specifications
The features of the Guin-16 CPU are as follows:

* 65,535 memory addresses
* 5 flags (Zero, Carry, Overflow, Parity, Negative)
* [Two's Complement](https://en.wikipedia.org/wiki/Two%27s_complement) number system
* 7 Registers (X, Y, Accumulator, Page, Instruction, Flag, MAR)
* [Carry-lookahead addition](https://en.wikipedia.org/wiki/Carry-lookahead_adder)

## Guin-16 Circuit Components

### Registers
The Guin-16 has seven registers: 2 general-purpose registers (X and Y), an Accumulator, a Page Register, an Instruction Register, a Flag Register, and a Memory Address Register (MAR). These are talked about more in-depth on the [Registers Page](registers.md).

### Program Counter
The Program Counter tells the Guin-16 which memory address to perform actions on at a given clock tick. This is typically incremented sequentially during processing but can be given a specific address to jump to.

<img src="imgs/pc.png" alt="Program Counter" style="height: auto; width: 50%;"></img>

### Control Unit
The Control Unit is given instructions from RAM and decodes the instructions into microinstructions which tell the Guin-16 what operations should be performed. It uses an instruction lookup table to translate instruction opcodes into their hardware-specific operations.

<img src="imgs/cu.png" alt="Program Counter" style="height: auto; width: 100%;"></img>

### ALU
The Arithmetic Logic Unit (ALU) is responsible for performing arithmetical operations on data given by different registers and RAM. If there is a two operand operation to be performed, one of the operands will _always_ be the Accumulator register, which is used to hold intermediate operations for the ALU.

<img src="imgs/alu.png" alt="Program Counter" style="height: auto; width: 50%;"></img>

### Stack Pointer
The Stack Pointer is another counter that is used to keep track of return addresses during jumps or indirect addressing. It operates like a [stack data structure](https://en.wikipedia.org/wiki/Stack_(abstract_data_type)), where addresses are pushed and popped from the stack.

<img src="imgs/sp.png" alt="Program Counter" style="height: auto; width: 100%;"></img>

## References
I used the following resources in researching and building this project: