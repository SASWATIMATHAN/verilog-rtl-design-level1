# Verilog RTL Design — Level 1: Fundamentals

<p align="center">
  <img src="https://img.shields.io/badge/HDL-Verilog-blue?style=for-the-badge" alt="Verilog">
  <img src="https://img.shields.io/badge/Simulation-Questa%20Sim-green?style=for-the-badge" alt="Questa Sim">
  <img src="https://img.shields.io/badge/FPGA-Quartus%20Prime-orange?style=for-the-badge" alt="Quartus Prime">
  <img src="https://img.shields.io/badge/Level-1%20Fundamentals-purple?style=for-the-badge" alt="Level 1">
</p>

<p align="center">
  <b>Foundational Verilog HDL concepts for RTL design, simulation, and digital hardware understanding.</b>
</p>

---

## 1. Project Background

This repository documents the first stage of a structured learning path in **Verilog HDL, RTL Design, FPGA Design, and ASIC Design**.

The objective of Level 1 is to establish a strong understanding of the Verilog constructs that form the foundation of synthesizable RTL.

Rather than learning Verilog only as a programming language, the exercises are approached from a **hardware-design perspective**:

```text
Verilog Description
        ↓
RTL Structure
        ↓
Simulation
        ↓
Waveform Analysis
        ↓
Hardware Behaviour Verification
```

Each laboratory exercise contains a Verilog design module and a corresponding testbench. The design is compiled and simulated using Questa Sim, and the resulting signals are examined using waveforms and dataflow visualization.

This foundation will be used in subsequent levels for designing larger RTL systems such as ALUs, registers, counters, finite-state machines, and integrated digital blocks.

---

## 2. Learning Objectives

The main objectives of Level 1 are to understand:

* Verilog module structure
* Ports and signal declarations
* `wire` and `reg`
* Binary, decimal, and hexadecimal representations
* Bit-select and part-select operations
* Concatenation and replication
* Byte ordering
* Sign extension and zero extension
* Reduction operators
* Bitwise operators
* Logical operators
* Shift operators
* Arithmetic operators
* Operator precedence
* Conditional/ternary operators
* Basic RTL simulation methodology
* Testbench-based verification
* Waveform interpretation
* Dataflow visualization

---

## 3. Tools and Environment

| Tool                  | Purpose                                                 |
| --------------------- | ------------------------------------------------------- |
| Verilog HDL           | RTL hardware description                                |
| Questa Sim / ModelSim | Compilation and RTL simulation                          |
| Quartus Prime         | FPGA-oriented RTL development and synthesis exploration |
| VS Code               | Source-code editing                                     |
| Git                   | Version control                                         |
| GitHub                | Repository and project documentation                    |

### Development Environment

* Operating System: Windows
* WSL: Ubuntu
* Questa: Questa Altera Starter FPGA Edition
* Quartus Prime
* Git / GitHub

---

## 4. Repository Structure

```text
LEVEL 1_VERILOG FUNDAMENTALS/
│
├── LAB 01&LAB 02 (CONSTANTS & NUMBER FORMATS_WIRE VS REG VS LOGIC)/
├── LAB 03 (BIT SELECT_PART SELECT)/
├── LAB 04 (CONCATENATION_REPLICATION)/
├── LAB 05 (BYTE SWAPPING)/
├── LAB 06 (SIGN EXTENSION)/
├── LAB 07 (ZERO EXTENSION)/
├── LAB 08 (REDUCTION_OPERATORS)/
├── LAB 09 (BITWISE OPERATORS)/
├── LAB 10 (LOGICAL OPERATORS)/
├── LAB 11 (SHIFT OPERATORS)/
├── LAB 12 (ARITHMETIC OPERATORS)/
├── LAB 13 (OPERATOR PRECEDENCE)/
├── LAB 14 (CONDITIONAL_TERNARY OPERATOR)/
│
├── constants_demo.v
├── constants_demo_tb.v
├── wire_reg_demo.v
├── wire_reg_demo_tb.v
├── bit_part_select.v
├── bit_part_select_tb.v
├── concat_replication.v
├── concat_replication_tb.v
├── byte_swapping.v
├── byte_swapping_tb.v
├── sign_extension.v
├── sign_extension_tb.v
├── zero_extension.v
├── zero_extension_tb.v
├── reduction_operators.v
├── reduction_operators_tb.v
├── bitwise_operators.v
├── bitwise_operators_tb.v
├── logical_operators.v
├── logical_operators_tb.v
├── shift_operators.v
├── shift_operators_tb.v
├── arithmetic_operators.v
├── arithmetic_operators_tb.v
├── operator_precedence.v
├── operator_precedence_tb.v
├── conditional_operator.v
├── conditional_operator_tb.v
│
├── .gitignore
└── README.md
```

Generated Questa/ModelSim files such as `work/`, `.wlf`, `.bak`, `.mti`, and `.cr.mti` are excluded from version control.

---

## 5. Laboratory Exercises

| Lab | Topic                          | Main Concepts                                |             |        |
| --- | ------------------------------ | -------------------------------------------- | ----------- | ------ |
| 01  | Constants & Number Formats     | Binary, decimal, hexadecimal                 |             |        |
| 02  | Wire vs Reg                    | Signal declaration and procedural assignment |             |        |
| 03  | Bit Select & Part Select       | Individual bits and bit ranges               |             |        |
| 04  | Concatenation & Replication    | `{}` operator                                |             |        |
| 05  | Byte Swapping                  | Byte ordering and concatenation              |             |        |
| 06  | Sign Extension                 | Signed representation                        |             |        |
| 07  | Zero Extension                 | Unsigned width expansion                     |             |        |
| 08  | Reduction Operators            | `&`, `                                       | `, `^`      |        |
| 09  | Bitwise Operators              | `&`, `                                       | `, `^`, `~` |        |
| 10  | Logical Operators              | `&&`, `                                      |             | `, `!` |
| 11  | Shift Operators                | `<<`, `>>`                                   |             |        |
| 12  | Arithmetic Operators           | `+`, `-`, `*`, `/`, `%`                      |             |        |
| 13  | Operator Precedence            | Expression evaluation order                  |             |        |
| 14  | Conditional / Ternary Operator | `condition ? true : false`                   |             |        |

---

## 6. Design and Verification Methodology

Each exercise follows a consistent RTL development workflow.

```text
              Design Module
                   │
                   │
                   ▼
             Verilog RTL
                   │
                   ▼
              Testbench
                   │
                   ▼
              Compilation
                   │
                   ▼
               Simulation
                   │
          ┌────────┴────────┐
          ▼                 ▼
      Waveform           Dataflow
      Analysis          Visualization
          │                 │
          └────────┬────────┘
                   ▼
             Verification
```

The **design module** describes the hardware behaviour.

The **testbench** provides input stimuli to the design and allows its outputs to be observed during simulation.

The testbench is simulated because it instantiates the design under test.

---

## 7. Testbench Structure

A typical testbench follows this structure:

```verilog
module example_tb;

    reg [3:0] A;
    reg [3:0] B;

    wire [3:0] result;

    example uut (
        .A(A),
        .B(B),
        .result(result)
    );

    initial begin

        A = 4'b0101;
        B = 4'b0011;
        #10;

        A = 4'b1000;
        B = 4'b0010;
        #10;

        $stop;

    end

endmodule
```

### Important Terms

**DUT — Design Under Test**

The Verilog module being verified.

**UUT — Unit Under Test**

The instance of the design being tested.

Example:

```verilog
example uut (
    .A(A),
    .B(B),
    .result(result)
);
```

Here, `uut` is the instance name.

### Simulation Delay

```verilog
#10;
```

means:

> Wait for 10 simulation time units before executing the next statement.

---

## 8. Common Questa Simulation Commands

The basic command-line workflow used throughout this project is:

### Compile the design

```text
vlog design.v
```

### Compile the testbench

```text
vlog design_tb.v
```

### Start simulation

```text
vsim -voptargs=+acc work.design_tb
```

### Run simulation

```text
run 50ns
```

The simulation duration depends on the number of test cases and the delay between them.

### Stop simulation

```text
$stop
```

is used inside the testbench to stop the simulation after the defined test cases.

---

## 9. Waveform Verification

After starting simulation, the relevant signals are added to the Wave window.

Typical workflow:

```text
Objects
   ↓
Select signals
   ↓
Add
   ↓
To Wave
   ↓
Run simulation
   ↓
Observe signal transitions
```

Waveforms are used to verify that the simulated hardware behaviour matches the expected result calculated manually.

For example:

```text
A       = 0101
B       = 0011
A + B   = 1000
```

The expected result is compared against the corresponding waveform output.

---

## 10. Dataflow Visualization

Questa's Dataflow view is also used to observe how signals propagate through the design.

Typical workflow:

```text
Objects
   ↓
Right-click UUT
   ↓
Add Dataflow
   ↓
Observe signal relationships
```

This provides a graphical representation of the RTL signal flow and helps connect Verilog statements with the underlying digital hardware structure.

---

## 11. Verification Philosophy

The exercises are not considered complete merely because the Verilog code compiles.

For each laboratory:

1. Write the RTL module.
2. Write a testbench.
3. Compile the RTL.
4. Compile the testbench.
5. Start simulation.
6. Apply multiple input combinations.
7. Calculate expected results manually.
8. Compare expected and simulated outputs.
9. Inspect waveforms.
10. Inspect dataflow where applicable.
11. Document the result with screenshots.

The objective is therefore:

```text
Code → Compile → Simulate → Observe → Calculate → Compare → Verify
```

---

## 12. Example: Sign Extension

Sign extension demonstrates how a signed value can be increased in width while preserving its numerical meaning.

For example:

```text
4-bit:
1011

Sign-extended to 8-bit:

11111011
```

The most significant bit is replicated during sign extension.

This concept becomes important later when designing arithmetic datapaths and processors.

---

## 13. Example: Bitwise vs Logical Operations

One important distinction explored in Level 1 is the difference between bitwise and logical operations.

### Bitwise operation

```verilog
A & B
```

operates on corresponding bits.

Example:

```text
A = 1010
B = 1100

A & B = 1000
```

### Logical operation

```verilog
A && B
```

evaluates the operands as logical true/false conditions and produces a single-bit result.

Understanding this distinction is important for writing correct RTL.

---

## 14. Example: Arithmetic Width

Arithmetic operations also demonstrate an important hardware-design concept: **signal width**.

For example, two 4-bit values can produce a result requiring more than 4 bits.

```text
1111 + 0011
 15  +  3
 = 18
```

Binary representation:

```text
10010
```

If the destination signal is only 4 bits wide:

```verilog
output [3:0] result;
```

the higher bit cannot be represented and the result is truncated.

This illustrates why datapath width must be considered carefully during RTL design.

---

## 15. Why Parameters and localparam Are Deferred

Parameterized modules and `localparam` were considered during the initial Level 1 plan but are intentionally deferred to the RTL design stage.

The reason is that these constructs are more meaningful when used in reusable hardware designs.

They will be introduced naturally while developing Level 2 RTL blocks such as:

* Counters
* Registers
* ALUs
* Shift registers
* FSMs
* Configurable datapaths

This keeps Level 1 focused on the fundamental Verilog language and simulation concepts.

---

## 16. Level 1 Outcome

After completing this level, the following workflow is established:

```text
Understand Verilog Construct
            ↓
Write RTL Module
            ↓
Write Testbench
            ↓
Compile
            ↓
Simulate
            ↓
Inspect Waveforms
            ↓
Verify Expected Behaviour
            ↓
Understand Hardware Relationship
```

The purpose of Level 1 is therefore not to create large hardware systems, but to establish the language and verification foundation required for RTL design.

---

## 17. Next Stage — Level 2 RTL Design

The next stage moves from individual Verilog constructs to actual digital hardware blocks.

Planned progression:

```text
Level 1
Verilog Fundamentals
        │
        ▼
Level 2
RTL Design
        │
        ├── Combinational Logic
        │
        ├── Multiplexer
        │
        ├── Decoder / Encoder
        │
        ├── Comparator
        │
        ├── Adder / Subtractor
        │
        ├── ALU
        │
        ├── Flip-Flops
        │
        ├── Registers
        │
        ├── Counters
        │
        ├── Shift Registers
        │
        └── Finite State Machines
                │
                ▼
        Integrated RTL Projects
```

Questa simulation will continue to be used for functional verification, while Quartus will progressively be introduced for synthesis-oriented RTL analysis.

---

## 18. Future Learning Path

The overall learning roadmap is:

```text
Level 1
Verilog Fundamentals
        ↓
Level 2
RTL Design
        ↓
Level 3
SystemVerilog
        ↓
Level 4
Verification
        ↓
UVM
        ↓
FPGA Design
        ↓
ASIC Design Flow
```

The later ASIC-oriented flow will introduce tools and concepts such as:

* Verilator
* GTKWave
* Yosys
* SkyWater SKY130
* OpenROAD
* Magic
* KLayout

---

## 19. References

### Verilog / HDL

* [IEEE Standards Association](https://standards.ieee.org/)
* [Verilog Wikipedia](https://en.wikipedia.org/wiki/Verilog)

### FPGA Design

* [Intel FPGA](https://www.intel.com/content/www/us/en/products/details/fpga.html)
* [Intel Quartus Prime](https://www.intel.com/content/www/us/en/software/programmable/quartus-prime/overview.html)

### Git and Version Control

* [Git Documentation](https://git-scm.com/doc)
* [GitHub Documentation](https://docs.github.com/)

---

## 20. Author

**Saswati Anupama Mathan**

M.Tech — Electronics and Communication Engineering (Specialisation - Communication)

This repository is part of a structured progression toward RTL design, FPGA development, digital verification, and ASIC design-flow fundamentals.

---

## 21. Repository Status

**Level 1 — Verilog Fundamentals: Completed**

Labs 01–14 completed with:

* Verilog source modules
* Dedicated testbenches
* Questa compilation
* Functional simulation
* Waveform verification
* Dataflow inspection
* Documentation screenshots

The repository will serve as the foundation for the subsequent RTL Design level.
