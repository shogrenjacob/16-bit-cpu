# Microcode
When an instruction is read into the bus it is translated to a set of microinstructions. These microinstructions tell the Guin-16 what hardware-level signals should be sent to different parts of the CPU. Microinstructions are exclusively seen by the CPU as true or false, turning features of the CPU on or off.

Some instructions require multiple clock ticks to complete their intended function. Therefore, one instruction could translate into a sequence of one or more microinstructions, resulting in a instruction taking multiple clock ticks. 

The Guin-16 includes 37 microinstructions, which are then broken down into six groups to conserve the amount of bits needed to store the whole microinstruction set. These groups are [Write](#write), [Read](#read), [MAR](#mar), [PC](#pc), [ALU](#alu), and [EDI](#edi). Another advantage of grouping, other than saving space, is that you can activate one microinstruction from each group on each clock tick. Without grouping, you would need to use a clock tick for each individual instruction. A microcode instruction is 16-bit, and the groups are organized in the instruction in the following format:

| [Write](#write) | [Read](#read) | [MAR](#mar) | [PC](#pc) | [EDI](#edi) | [ALU](#alu) |
|---|---|---|---|---|---|
| 000 | 000 | 000 | 00 | 0 | 0000 |

Where the most significant set of bits are in the write group and least significant are in the ALU group.

> As an example, let's look at LDA Immediate. The instruction in binary would look like 0111100000000000 or x7800 in hex. Breaking down the binary of this instruction into each group gives us 011 (Write Accumulator), 110 (Read Memory), 000 (Nothing happens to the MAR), 00 (Nothing happens to the Program Counter), 0 (Instruction is not done), 00000 (No ALU operations are performed). 

The microcode included in each of these groups are below:

## Write 
The write group is the group of microinstructions that includes signals to enable write functionality in different components of the CPU. The write group requires 3 bits to hold the entire set. 

| Microinstruction | Opcode (binary) | Usage | 
|---|---|---|
| wrx | 001 | Write value from the bus to the X Register. |
| wry | 010 | Write value from the bus to the Y Register. |
| wra | 011 | Write value from the bus to the Accumulator. |
| wrp | 100 | Write value from the bus to the Page Register. |
| wri | 101 | Write from the bus to the Instruction Register. |
| wrm | 110 | Write from the bus to memory. |

## Read
The read group is the group of microinstructions that includes signals to enable read functionality in different components of the CPU. The read group requires 3 bits to hold the entire set. 

| Microinstruction | Opcode (binary) | Usage | 
|---|---|---|
| rdx | 001 | Read value from X Register into the bus. |
| rdy | 010 | Read value from Y Register into the bus. |
| rda | 011 | Read value from the Accumulator into the bus. |
| rdp | 100 | Read value from the Page Register into the bus. |
| rdi | 101 | Read value from Instruction Register into the bus. |
| rdm | 110 | Read value from memory into the bus. |

## MAR
The MAR group represents actions that can be performed on the Memory Address Register besides reading and writing. The MAR group requires 3 bits to hold the entire set.

| Microinstruction | Opcode (binary) | Usage | 
|---|---|---|
| apg | 001 | Add page to the current memory address. |
| spg | 010 | Subtract page from the current memory address. |
| wma | 101 | Write to the MAR. |
| rma | 110 | Read from the MAR. |

## PC
The PC group represents actions that can be performed by the Program Counter. The PC group requires 2 bits to hold the set.

| Microinstruction | Opcode (binary) | Usage | 
|---|---|---|
| rpc | 01 | Reset the Program Counter to default value. |
| lpc | 10 | Load a value from the bus into the Program Counter |
| lzpc | 11 | Load a value from the bus into the Program Counter if the zero flag is raised. |

## EDI
1 bit representing the end of an instruction in the Microinstruction Lookup table.

| Microinstruction | Opcode (binary) | Usage | 
|---|---|---|
| edi | 1 | Represents the end instruction processing. |

## ALU
4 bits including microcode instructions to perform ALU operations.

| Microinstruction | Opcode (binary) | Usage | 
|---|---|---|
| raa | 0001 | Read output of logical AND operation. |
| rao | 0010 | Read output of logical OR operation. |
| rsl | 0011 | Read output of logical shift left operation. |
| rsr | 0100 | Read output of logical shift right operation. |
| rrl | 0101 | Read output of logical rotate left operation. |
| rrr | 0110 | Read output of logical rotate right operation. |
| rac | 0111 | Read output of add with carry operation. |
| rsc | 1000 | Read output of subtract operation. |
| ria | 1001 | Read output of increment Accumulator operation. |
| rix | 1010 | Read output of increment X Register operation. |
| riy | 1011 | Read output of increment Y Register operation. |
| rip | 1100 | Read output of increment Page Register operation. |
| ran | 1101 | Read output of logical NOT operation. |
| rdp | 1110 | Read output of decrement Page Register operation. |