# Instruction Set
For any non-data word, the center two hex digits of data at a memory address represent a given opcode. The first hex digit (from left to right) represents the [addressing mode](addressing-modes.md) to use, and the last hex digit represents what flags to compare during instruction processing.

> For example, x4021 in memory tells the CPU to perform a [LDA](instruction-set.md/#lda) (0x02) using the next word in memory as an [Absolute](addressing-modes.md/#absolute) (0x4) address, and to check whether or not the [zero flag](flags.md/#zero) is raised (0x1).

## NOP
Do nothing, but increment the program counter.

| Addressing Mode | Opcode | Cycle Cost |
|---|---|---|
| [Implicit](addressing-modes.md/#implicit) | x000 | 1 |

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
| [Immediate](addressing-modes.md/#immediate) | x002 | 2 |
| [PageAhead](addressing-modes.md/#pageahead) | x502 | 3 |
| [PageBehind](addressing-modes.md/#pagebehind) | x202 | 3 |
| [Absolute](addressing-modes.md/#absolute) | x402 | 3 |
| [AbsoluteX](addressing-modes.md/#absolutex) | x102 | 3 |
| [AbsoluteY](addressing-modes.md/#absolutey) | x602 | 3 |

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
| [Immediate](addressing-modes.md/#immediate) | x006 | 2 |
| [PageAhead](addressing-modes.md/#pageahead) | x50c | 3 |
| [PageBehind](addressing-modes.md/#pagebehind) | x20c | 3 |
| [Absolute](addressing-modes.md/#absolute) | x40c | 3 |
| [AbsoluteX](addressing-modes.md/#absolutex) | x10c | 3 |
| [AbsoluteY](addressing-modes.md/#absolutey) | x60c | 3 |

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
| [Immediate](addressing-modes.md/#immediate) | x00a | 2 |
| [PageAhead](addressing-modes.md/#pageahead) | x516 | 3 |
| [PageBehind](addressing-modes.md/#pagebehind) | x216 | 3 |
| [Absolute](addressing-modes.md/#absolute) | x417 | 3 |
| [AbsoluteX](addressing-modes.md/#absolutex) | x116 | 3 |
| [AbsoluteY](addressing-modes.md/#absolutey) | x616 | 3 |

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
| [Immediate](addressing-modes.md/#immediate) | x00e | 2 |
| [PageAhead](addressing-modes.md/#pageahead) | x520 | 3 |
| [PageBehind](addressing-modes.md/#pagebehind) | x220 | 3 |
| [Absolute](addressing-modes.md/#absolute) | x421 | 3 |
| [AbsoluteX](addressing-modes.md/#absolutex) | x120 | 3 |
| [AbsoluteY](addressing-modes.md/#absolutey) | x620 | 3 |

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
| [Immediate](addressing-modes.md/#immediate) | x012 | 2 |
| [PageAhead](addressing-modes.md/#pageahead) | x52a | 3 |
| [PageBehind](addressing-modes.md/#pagebehind) | x22a | 3 |
| [Absolute](addressing-modes.md/#absolute) | x42b | 3 |
| [AbsoluteX](addressing-modes.md/#absolutex) | x12a | 3 |
| [AbsoluteY](addressing-modes.md/#absolutey) | x62a | 3 |

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
| [Immediate](addressing-modes.md/#immediate) | x016 | 2 |
| [PageAhead](addressing-modes.md/#pageahead) | x534 | 3 |
| [PageBehind](addressing-modes.md/#pagebehind) | x234 | 3 |
| [Absolute](addressing-modes.md/#absolute) | x435 | 3 |
| [AbsoluteX](addressing-modes.md/#absolutex) | x134 | 3 |
| [AbsoluteY](addressing-modes.md/#absolutey) | x634 | 3 |

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
| [Immediate](addressing-modes.md/#immediate) | x01a | 2 |
| [PageAhead](addressing-modes.md/#pageahead) | x53e | 3 |
| [PageBehind](addressing-modes.md/#pagebehind) | x23e | 3 |
| [Absolute](addressing-modes.md/#absolute) | x43f | 3 |
| [AbsoluteX](addressing-modes.md/#absolutex) | x13e | 3 |
| [AbsoluteY](addressing-modes.md/#absolutey) | x63e | 3 |

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
| [Immediate](addressing-modes.md/#immediate) | x01e | 2 |
| [PageAhead](addressing-modes.md/#pageahead) | x548 | 3 |
| [PageBehind](addressing-modes.md/#pagebehind) | x248 | 3 |
| [Absolute](addressing-modes.md/#absolute) | x449 | 3 |
| [AbsoluteX](addressing-modes.md/#absolutex) | x148 | 3 |
| [AbsoluteY](addressing-modes.md/#absolutey) | x648 | 3 |

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
| [Implicit](addressing-modes.md/#implicit) | x022 | 1 |

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
| [Implicit](addressing-modes.md/#implicit) | x026 | 1 |

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
| [Implicit](addressing-modes.md/#implicit) | x02a | 1 |

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
| [Implicit](addressing-modes.md/#implicit) | x02e | 1 |

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
| [Implicit](addressing-modes.md/#implicit) | x032 | 1 |

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
| [Implicit](addressing-modes.md/#implicit) | x036 | 1 |

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
| [Implicit](addressing-modes.md/#implicit) | x03a | 1 |

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
| [Implicit](addressing-modes.md/#implicit) | x03e | 1 |

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
| [Implicit](addressing-modes.md/#implicit) | x042 | 1 |

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
| [Immediate](addressing-modes.md/#immediate) | x046 | 2 |
| [PageAhead](addressing-modes.md/#pageahead) | x552 | 3 |
| [PageBehind](addressing-modes.md/#pagebehind) | x252 | 3 |
| [Absolute](addressing-modes.md/#absolute) | x453 | 3 |
| [AbsoluteX](addressing-modes.md/#absolutex) | x152 | 3 |
| [AbsoluteY](addressing-modes.md/#absolutey) | x652 | 3 |

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
| [Immediate](addressing-modes.md/#immediate) | x04a | 2 |
| [PageAhead](addressing-modes.md/#pageahead) | x55c | 3 |
| [PageBehind](addressing-modes.md/#pagebehind) | x25c | 3 |
| [Absolute](addressing-modes.md/#absolute) | x45d | 3 |
| [AbsoluteX](addressing-modes.md/#absolutex) | x15c | 3 |
| [AbsoluteY](addressing-modes.md/#absolutey) | x65c | 3 |

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
| [Implicit](addressing-modes.md/#implicit) | x04e | 1 |

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
| [Immediate](addressing-modes.md/#immediate) | x052 | 2 |
| [PageAhead](addressing-modes.md/#pageahead) | x566 | 3 |
| [PageBehind](addressing-modes.md/#pagebehind) | x266 | 3 |
| [Absolute](addressing-modes.md/#absolute) | x467 | 3 |
| [AbsoluteX](addressing-modes.md/#absolutex) | x166 | 3 |
| [AbsoluteY](addressing-modes.md/#absolutey) | x666 (Spooky!) | 3 |
| [Indirect](addressing-modes.md/#indirect) | x766 | 1 |

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
| [Implicit](addressing-modes.md/#implicit) | x056 | 1 |

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
| [Immediate](addressing-modes.md/#immediate) | x05a1 | 2 |

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
| [Immediate](addressing-modes.md/#immediate) | x05a1 | 2 |

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
| [Immediate](addressing-modes.md/#immediate) | x05e1 | 2 |

**Processor Status Changes:**

- Carry: No change.
- Zero: No change.
- Overflow: No change.
- Parity: No change.
- Negative: No change.