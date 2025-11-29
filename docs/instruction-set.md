# Instruction Set
For any non-data word, the center two hex digits of data at a memory address represent a given opcode. The first hex digit (from left to right) represents the [addressing mode](addressing-modes.md) to use, and the last hex digit represents what flags to compare during instruction processing.

> For example, x4021 in memory tells the CPU to perform a [LDA](addressing-modes.md) (0x02) using the next word in memory as an [absolute](addressing-modes.md) (0x4) address, and to check whether or not the [zero flag](addressing-modes.md) is raised (0x1).

## NOP
Do nothing, but increment the program counter.

| Addressing Mode | Opcode | Cycle Cost |
|---|---|---|
| [Implicit](addressing-modes.md) | x000 | 1 |

**Processor Status Changes:**

- Carry: No change.
- Zero: No change.
- Overflow: No change.
- Parity: No change.
- Negative: No change.

## LDA
Load the next data word into the Accumulator.

| Addressing Mode | Opcode | Cycle Cost |
|---|---|---|
| [Immediate](addressing-modes.md) | x002 | 2 |
| [PageAhead](addressing-modes.md) | x102 | 1 |
| [PageBehind](addressing-modes.md) | x202 | 1 |
| [Absolute](addressing-modes.md) | x402 | 1 |
| [AbsoluteX](addressing-modes.md) | x502 | 1 |
| [AbsoluteY](addressing-modes.md) | x602 | 1 |
| [Indirect](addressing-modes.md) | x702 | 1 |

**Processor Status Changes:**

- Carry: No change.
- Zero: Raise if Accumulator = 0.
- Overflow: No change.
- Parity: Raise if bit 0 of the Accumulator is up.
- Negative: Raise if bit 15 of the Accumulator is up.


## LDX
Load the next data word into the X Register.

| Addressing Mode | Opcode | Cycle Cost |
|---|---|---|
| [Immediate](addressing-modes.md) | x006 | 2 |
| [PageAhead](addressing-modes.md) | x106 | 1 |
| [PageBehind](addressing-modes.md) | x206 | 1 |
| [Absolute](addressing-modes.md) | x406 | 1 |
| [AbsoluteX](addressing-modes.md) | x506 | 1 |
| [AbsoluteY](addressing-modes.md) | x606 | 1 |
| [Indirect](addressing-modes.md) | x706 | 1 |

**Processor Status Changes:**

- Carry: No change.
- Zero: Raise if X Register = 0.
- Overflow: No change.
- Parity: Raise if bit 0 of the X Register is up.
- Negative: Raise if bit 15 of the X Register is up.

## LDY
Load the next data word into the Y Register.

| Addressing Mode | Opcode | Cycle Cost |
|---|---|---|
| [Immediate](addressing-modes.md) | x00a | 2 |
| [PageAhead](addressing-modes.md) | x10a | 1 |
| [PageBehind](addressing-modes.md) | x20a | 1 |
| [Absolute](addressing-modes.md) | x40a | 1 |
| [AbsoluteX](addressing-modes.md) | x50a | 1 |
| [AbsoluteY](addressing-modes.md) | x60a | 1 |
| [Indirect](addressing-modes.md) | x70a | 1 |

**Processor Status Changes:**

- Carry: No change.
- Zero: Raise if Y Register = 0.
- Overflow: No change.
- Parity: Raise if bit 0 of the Y Register is up.
- Negative: Raise if bit 15 of the Y Register is up.

## STA
Store the contents of the Accumulator at the processed memory address.

| Addressing Mode | Opcode | Cycle Cost |
|---|---|---|
| [Immediate](addressing-modes.md) | x00e | 2 |
| [PageAhead](addressing-modes.md) | x10e | 1 |
| [PageBehind](addressing-modes.md) | x20e | 1 |
| [Absolute](addressing-modes.md) | x40e | 1 |
| [AbsoluteX](addressing-modes.md) | x50e | 1 |
| [AbsoluteY](addressing-modes.md) | x60e | 1 |
| [Indirect](addressing-modes.md) | x70e | 1 |

**Processor Status Changes:**

- Carry: No change.
- Zero: Raise if value = 0.
- Overflow: No change.
- Parity: Raise if bit 0 of the value is up.
- Negative: Raise if bit 15 of the value is up.

## STX
Store the contents of the X Register at the processed memory address.

| Addressing Mode | Opcode | Cycle Cost |
|---|---|---|
| [Immediate](addressing-modes.md) | x012 | 2 |
| [PageAhead](addressing-modes.md) | x112 | 1 |
| [PageBehind](addressing-modes.md) | x212 | 1 |
| [Absolute](addressing-modes.md) | x412 | 1 |
| [AbsoluteX](addressing-modes.md) | x512 | 1 |
| [AbsoluteY](addressing-modes.md) | x612 | 1 |
| [Indirect](addressing-modes.md) | x712 | 1 |

**Processor Status Changes:**

- Carry: No change.
- Zero: Raise if value = 0.
- Overflow: No change.
- Parity: Raise if bit 0 of the value is up.
- Negative: Raise if bit 15 of the value is up.

## STY
Store the contents of the Y Register at the processed memory address.

| Addressing Mode | Opcode | Cycle Cost |
|---|---|---|
| [Immediate](addressing-modes.md) | x016 | 2 |
| [PageAhead](addressing-modes.md) | x116 | 1 |
| [PageBehind](addressing-modes.md) | x216 | 1 |
| [Absolute](addressing-modes.md) | x416 | 1 |
| [AbsoluteX](addressing-modes.md) | x516 | 1 |
| [AbsoluteY](addressing-modes.md) | x616 | 1 |
| [Indirect](addressing-modes.md) | x716 | 1 |

**Processor Status Changes:**

- Carry: No change.
- Zero: Raise if value = 0.
- Overflow: No change.
- Parity: Raise if bit 0 of the value is up.
- Negative: Raise if bit 15 of the value is up.

## AND
Perform a bitwise AND operation on the Accumulator and a given word.

| Addressing Mode | Opcode | Cycle Cost |
|---|---|---|
| [Immediate](addressing-modes.md) | x01a | 2 |
| [PageAhead](addressing-modes.md) | x11a | 1 |
| [PageBehind](addressing-modes.md) | x21a | 1 |
| [Absolute](addressing-modes.md) | x41a | 1 |
| [AbsoluteX](addressing-modes.md) | x51a | 1 |
| [AbsoluteY](addressing-modes.md) | x61a | 1 |
| [Indirect](addressing-modes.md) | x71a | 1 |

**Processor Status Changes:**

- Carry: No change.
- Zero: Raise if result = 0.
- Overflow: No change.
- Parity: Raise if bit 0 of the result is up.
- Negative: Raise if bit 15 of the result is up.

## OR
Perform a bitwise OR operation on the Accumulator and a given word.

| Addressing Mode | Opcode | Cycle Cost |
|---|---|---|
| [Immediate](addressing-modes.md) | x01e | 2 |
| [PageAhead](addressing-modes.md) | x11e | 1 |
| [PageBehind](addressing-modes.md) | x21e | 1 |
| [Absolute](addressing-modes.md) | x41e | 1 |
| [AbsoluteX](addressing-modes.md) | x51e | 1 |
| [AbsoluteY](addressing-modes.md) | x61e | 1 |
| [Indirect](addressing-modes.md) | x71e | 1 |

**Processor Status Changes:**

- Carry: No change.
- Zero: Raise if result = 0.
- Overflow: No change.
- Parity: Raise if bit 0 of the result is up.
- Negative: Raise if bit 15 of the result is up.

## NOT
Perform a bitwise NOT operation on the Accumulator.

| Addressing Mode | Opcode | Cycle Cost |
|---|---|---|
| [Implicit](addressing-modes.md) | x022 | 1 |

**Processor Status Changes:**

- Carry: No change.
- Zero: Raise if result = 0.
- Overflow: No change.
- Parity: Raise if bit 0 of the result is up.
- Negative: Raise if bit 15 of the result is up.

## BSL
Shift all bits of the Accumulator one spot to the left. The most significant bit is discarded during the operation and the least significant bit is filled with a zero.

| Addressing Mode | Opcode | Cycle Cost |
|---|---|---|
| [Implicit](addressing-modes.md) | x026 | 1 |

**Processor Status Changes:**

- Carry: No change.
- Zero: Raise if result = 0.
- Overflow: No change.
- Parity: Raise if bit 0 of the result is up.
- Negative: Raise if bit 15 of the result is up.

## BSR
Shift all bits of the Accumulator one spot to the right. The least significant bit is discarded during the operation and the most significant bit is filled with a zero.

| Addressing Mode | Opcode | Cycle Cost |
|---|---|---|
| [Implicit](addressing-modes.md) | x02a | 1 |

**Processor Status Changes:**

- Carry: No change.
- Zero: Raise if result = 0.
- Overflow: No change.
- Parity: Raise if bit 0 of the result is up.
- Negative: Raise if bit 15 of the result is up.

## ROL
Shift all bits of the Accumulator one spot to the left, the most significant bit wraps around to become the least significant bit.

| Addressing Mode | Opcode | Cycle Cost |
|---|---|---|
| [Implicit](addressing-modes.md) | x02e | 1 |

**Processor Status Changes:**

- Carry: No change.
- Zero: Raise if result = 0.
- Overflow: No change.
- Parity: Raise if bit 0 of the result is up.
- Negative: Raise if bit 15 of the result is up.

## ROR
Shift all bits of the Accumulator one spot to the right, the least significant bit wraps around to become the most significant bit.

| Addressing Mode | Opcode | Cycle Cost |
|---|---|---|
| [Implicit](addressing-modes.md) | x032 | 1 |

**Processor Status Changes:**

- Carry: No change.
- Zero: Raise if result = 0.
- Overflow: No change.
- Parity: Raise if bit 0 of the result is up.
- Negative: Raise if bit 15 of the result is up.

## INA
Increment the contents of the Accumulator by 1.

| Addressing Mode | Opcode | Cycle Cost |
|---|---|---|
| [Implicit](addressing-modes.md) | x036 | 1 |

**Processor Status Changes:**

- Carry: Raise if addition results in a carry bit.
- Zero: Raise if result = 0.
- Overflow: Raise if Accumulator value overflows.
- Parity: Raise if bit 0 of the result is up.
- Negative: Raise if bit 15 of the result is up.

## INX
Increment the contents of the X Register by 1.

| Addressing Mode | Opcode | Cycle Cost |
|---|---|---|
| [Implicit](addressing-modes.md) | x03a | 1 |

**Processor Status Changes:**

- Carry: Raise if addition results in a carry bit.
- Zero: Raise if result = 0.
- Overflow: Raise if X Register value overflows.
- Parity: Raise if bit 0 of the result is up.
- Negative: Raise if bit 15 of the result is up.

## INY
Increment the contents of the Y Register by 1.

| Addressing Mode | Opcode | Cycle Cost |
|---|---|---|
| [Implicit](addressing-modes.md) | x03e | 1 |

**Processor Status Changes:**

- Carry: Raise if addition results in a carry bit.
- Zero: Raise if result = 0.
- Overflow: Raise if Y Register value overflows.
- Parity: Raise if bit 0 of the result is up.
- Negative: Raise if bit 15 of the result is up.

## INP
Increment the contents of the page register by 1.

| Addressing Mode | Opcode | Cycle Cost |
|---|---|---|
| [Implicit](addressing-modes.md) | x042 | 1 |

**Processor Status Changes:**

- Carry: Raise if addition results in a carry bit.
- Zero: Raise if result = 0.
- Overflow: Raise if page register value overflows.
- Parity: Raise if bit 0 of the result is up.
- Negative: Raise if bit 15 of the result is up.

## ADC
Add a given value to the Accumulator. Generate a carry bit if the addition results in a carry.

| Addressing Mode | Opcode | Cycle Cost |
|---|---|---|
| [Immediate](addressing-modes.md) | x046 | 2 |
| [PageAhead](addressing-modes.md) | x146 | 1 |
| [PageBehind](addressing-modes.md) | x246 | 1 |
| [Absolute](addressing-modes.md) | x446 | 1 |
| [AbsoluteX](addressing-modes.md) | x546 | 1 |
| [AbsoluteY](addressing-modes.md) | x646 | 1 |
| [Indirect](addressing-modes.md) | x746 | 1 |

**Processor Status Changes:**

- Carry: Raise if addition results in a carry bit.
- Zero: Raise if result = 0.
- Overflow: Raise if addition overflows.
- Parity: Raise if bit 0 of the result is up.
- Negative: Raise if bit 15 of the result is up.

## SBC
Subtract a given value from the Accumulator.

| Addressing Mode | Opcode | Cycle Cost |
|---|---|---|
| [Immediate](addressing-modes.md) | x04a | 2 |
| [PageAhead](addressing-modes.md) | x14a | 1 |
| [PageBehind](addressing-modes.md) | x24a | 1 |
| [Absolute](addressing-modes.md) | x44a | 1 |
| [AbsoluteX](addressing-modes.md) | x54a | 1 |
| [AbsoluteY](addressing-modes.md) | x64a | 1 |
| [Indirect](addressing-modes.md) | x74a | 1 |

**Processor Status Changes:**

- Carry: No change.
- Zero: Raise if result = 0.
- Overflow: No change.
- Parity: Raise if bit 0 of the result is up.
- Negative: Raise if bit 15 of the result is up.

## DEP
Decrement the contents of the page register by 1.

| Addressing Mode | Opcode | Cycle Cost |
|---|---|---|
| [Implicit](addressing-modes.md) | x04e | 1 |

**Processor Status Changes:**

- Carry: Raise if addition results in a carry bit.
- Zero: Raise if result = 0.
- Overflow: Raise if page register value overflows.
- Parity: Raise if bit 0 of the result is up.
- Negative: Raise if bit 15 of the result is up.

## JMP
Jump to the memory location given by the processed data word.

| Addressing Mode | Opcode | Cycle Cost |
|---|---|---|
| [Immediate](addressing-modes.md) | x052 | 2 |
| [PageAhead](addressing-modes.md) | x152 | 1 |
| [PageBehind](addressing-modes.md) | x252 | 1 |
| [Absolute](addressing-modes.md) | x452 | 1 |
| [AbsoluteX](addressing-modes.md) | x552 | 1 |
| [AbsoluteY](addressing-modes.md) | x652 | 1 |
| [Indirect](addressing-modes.md) | x752 | 1 |

**Processor Status Changes:**

- Carry: No change.
- Zero: No change.
- Overflow: No change.
- Parity: No change.
- Negative: No change.

## JMPP
Jump to the start of the page given by the page register.
> Note: The page register stores the **page number** of the page to jump to, not the address at the start of the page. So, a page register holding a value of 1 will jump to 0xff in memory.

| Addressing Mode | Opcode | Cycle Cost |
|---|---|---|
| [Implicit](addressing-modes.md) | x056 | 1 |

**Processor Status Changes:**

- Carry: No change.
- Zero: No change.
- Overflow: No change.
- Parity: No change.
- Negative: No change.

## Note on Branch Instructions:
The extra hex digit in the opcode represents the flag to check for the conditional branch. Theoretically, you can use 2, 4, 8, and f as the last digit to use different flags as conditionals but that is not officially supported in the instruction set.

## BRAZ
Jump to the given memory address only if the Accumulator = 0.

| Addressing Mode | Opcode | Cycle Cost |
|---|---|---|
| [Immediate](addressing-modes.md) | x05a1 | 2 |
| [PageAhead](addressing-modes.md) | x15a1 | 1 |
| [PageBehind](addressing-modes.md) | x25a1 | 1 |
| [Absolute](addressing-modes.md) | x45a1 | 1 |
| [AbsoluteX](addressing-modes.md) | x55a1 | 1 |
| [AbsoluteY](addressing-modes.md) | x65a1 | 1 |
| [Indirect](addressing-modes.md) | x75a1 | 1 |

**Processor Status Changes:**

- Carry: No change.
- Zero: No change.
- Overflow: No change.
- Parity: No change.
- Negative: No change.

## BRXZ
Jump to the given memory address only if the X Register = 0.

| Addressing Mode | Opcode | Cycle Cost |
|---|---|---|
| [Immediate](addressing-modes.md) | x05a1 | 2 |
| [PageAhead](addressing-modes.md) | x15a1 | 1 |
| [PageBehind](addressing-modes.md) | x25a1 | 1 |
| [Absolute](addressing-modes.md) | x45a1 | 1 |
| [AbsoluteX](addressing-modes.md) | x55a1 | 1 |
| [AbsoluteY](addressing-modes.md) | x65a1 | 1 |
| [Indirect](addressing-modes.md) | x75a1 | 1 |

**Processor Status Changes:**

- Carry: No change.
- Zero: No change.
- Overflow: No change.
- Parity: No change.
- Negative: No change.

## BRYZ
Jump to the given memory address only if the Y Register = 0.

| Addressing Mode | Opcode | Cycle Cost |
|---|---|---|
| [Immediate](addressing-modes.md) | x05e1 | 2 |
| [PageAhead](addressing-modes.md) | x15e1 | 1 |
| [PageBehind](addressing-modes.md) | x25e1 | 1 |
| [Absolute](addressing-modes.md) | x45e1 | 1 |
| [AbsoluteX](addressing-modes.md) | x55e1 | 1 |
| [AbsoluteY](addressing-modes.md) | x65e1 | 1 |
| [Indirect](addressing-modes.md) | x75e1 | 1 |

**Processor Status Changes:**

- Carry: No change.
- Zero: No change.
- Overflow: No change.
- Parity: No change.
- Negative: No change.