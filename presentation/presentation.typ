#import "@preview/typslides:1.3.0": *

// Project configuration
#show: typslides.with(
  ratio: "16-9",
  theme: rgb("#ef5552"),
  font: "Linux Biolinum",
  font-size: 20pt,
  link-style: "color",
  show-progress: true,
)

// The front slide is the first slide of your presentation
#front-slide(
  title: "Guin-16",
  subtitle: [_An Original 16-Bit CPU_],
  authors: "Jacob Shogren",
  info: [#link("https://github.com/shogrenjacob/16-bit-cpu")],
)

// Slide with title
#slide(title: "Overview", outlined: true)[

    #cols(columns: (5fr, 5fr))[
      #align(top)[
        - Von Neumann Architecture
        \
        - 65,535 memory addresses (255 per page)
        \
        - 7 Registers, 5 Flags
        \
        - Two's Compliment
        \
        - Microcode Instruction Set Implementation
      ]
  ][
    #image("imgs/Von_Neumann_Architecture.svg")

    #align(center)[
      #text(size: 14pt)[
        By Kapooht - Own work, CC BY-SA 3.0, 
        
        https://commons.wikimedia.org/w/index.php?curid=25789639
      ]
    ]
  ]
]

#slide(title: "Memory", outlined: true)[
  #cols(columns: (5fr, 5fr))[
    #align(top)[
      - Stack Memory (0x00 $arrow$ 0xfe)
      \
      - Free Memory (0xff $arrow$ 0xfffc)
      \
      - Reset Vector (0xfffd $arrow$ 0xffff)
      \
      \
      \

      #image("imgs/mem-layout-svg.svg", width: 140%)
    ]
  ][
    #align(top)[
      #image("imgs/ram.png")
    ]
    
  ]
]

#slide(title: "Registers", outlined: true)[
  #cols(columns: (5fr, 5fr))[
    #align(top)[
    - General-Purpose Registers
    \
    - Accumulator
    \
    - Instruction Register
    \
    - Page Register
    \
    - Flag Register
    \
    - Memory Address Register (MAR)
    ]
  ][
    #image("imgs/xy-reg.png", width: 80%)
    #image("imgs/page-reg.png", width: 80%)
    #image("imgs/acc.png", width: 80%)

  ]

]

#slide(title: "Control Unit", outlined: true)[
  #cols(columns: (5fr, 5fr))[
    #align(top)[
      - Takes the instruction stored in the Instruction Register and breaks it into parts.
      \
      - Instruction = 11 most significant bits
      \
      - Flag Checks = 5 least significant bits
      \
      - Instruction part loaded into the Instruction Lookup Table

    ]
  ][
    #image("imgs/cu.png")

  ]
]

#slide(title: "Microcode", outlined: true)[
  #align(top)[
    #align(center)[
      #text(size: 28pt)[Six groups of microcode:]
      #cols(columns: (2fr, 2fr, 2fr, 2fr, 2fr, 2fr))[
        #grayed([Write 011])
      ][
        #grayed([Read 110])
      ][
        #grayed([Indirect 100])
      ][
        #grayed([PC\ 00])
      ][
        #grayed([EDI\ 0])
      ][
        #grayed([ALU 1111])
      ]
      Concatenate these together to get a microinstruction:
      #grayed([#text(size: 28pt)[0111101000001111 = 0x7a0f]])

      Writing to Accumulator, reading from memory, moving the Stack Pointer, and changing the Stack Pointer mode all in one clock tick!
    ]    
  ]

]

#slide(title: "Instructions", outlined: true)[
    #cols(columns: (5fr, 5fr))[
    #align(top)[
      - Live in memory and are sent to the Instruction Register to be processed in the Control Unit.
      \
      - Made up of a series of microinstructions
      \
      - Instruction broken into three parts:
        - Hex Digit 1 = Addressing Mode
        - Hex Digit 2 & 3 = Lookup Table Index
        - Hex Digit 4 = Flags to Compare
    ]
  ][
    #grayed([
      LDX Immediate (0x0020)
      
      STA PageAhead (0x5200)

      ADC Absolute (0x453)

      JMP Indirect (0x7660)

      PSHY Implied (0x0700)
    ])

  ]
]

#slide(title: "Addressing Modes", outlined: true)[
  #align(top)[
    #align(center)[
      #framed(title: "There are 8 addressing modes in the Guin-16:")[
        #align(left)[
        1. *Implicit* - No data needed for this instruction.
        2. *Immediate* - Next address consecutive address in memory holds the data.
        3. *Page Ahead* - Data found at the address a page ahead of instruction.
        4. *Page Behind* - Data found at the address a page behind the instruction.
        5. *Absolute* - Data at next address points to the address of the data to use.
        6. *AbsoluteX* - Add the contents of X to absolute address found.
        7. *AbsoluteY* - Add the contents of Y to absolute address found.
        8. *Indirect* - Perform two absolutes to get the data needed.
        ]
      ]
    ]
  ]
]

#slide(title: "ALU", outlined: true)[
  #align()[
    #cols(columns: (7fr, 3fr))[
      - Handles arithmetic and logical operations in the CPU
      \
      - Two-operand operations _always_ use Accumulator
      \
      - Intermediate operations sent to Accumulator
    ][
      #image("imgs/alu.png")
    ]
  ]
]

#slide(title: "Stack Pointer", outlined: true)[
    #cols(columns: (5fr, 5fr))[
    #align(top)[
      - Points to the current top of the Stack
      \
      - Increments every push operation
      \
      - Decrements every pop operation

    ]
  ][
    #image("imgs/sp.png")

  ]
]

#focus-slide()[
  #cols(columns: (7fr, 3fr))[
    Documentation & Demonstration
  ][
    #image("imgs/guin.png", width: 180pt)
  ]
]
