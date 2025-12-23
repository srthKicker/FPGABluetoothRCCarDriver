# FPGABluetoothRCCarDriver

This project implements a Bluetooth‑controlled RC car using an FPGA and a fully custom UART receiver, motor‑control finite‑state machine, and seven‑segment display system. The design receives serial data from a Bluetooth module, decodes it into motor commands, and displays the received byte in hexadecimal. The original constraints file for this project has unfortunately been lost.

Overview
The system is built around a top‑level UART module that coordinates all communication, timing, and control logic. Incoming serial data is sampled at 9600 baud, assembled into an 8‑bit value, and used to update the motor control FSM. The same byte is also decoded and shown on a dual seven‑segment display for debugging and visibility.

Key features include:

Custom UART receiver built entirely in SystemVerilog

Baud‑rate generator tuned for 9600 baud at a 100 MHz system clock

Motor‑control FSM that interprets command bytes

Seven‑segment display pipeline for real‑time feedback

Start‑bit detection logic to synchronize UART reception

Startup delay mechanism allowing the Bluetooth module to initialize

System Architecture
The design is composed of several modules, each responsible for a specific part of the data path.

Top‑Level UART Module
The uart module integrates all subsystems. It:

Waits ~10 seconds after power‑up before enabling UART reception

Instantiates the receiver, baud generator, motor controller, reset logic, and display drivers

Routes the decoded byte to both the motor FSM and the seven‑segment display

Receiver (rxBit)
The receiver samples incoming bits on each baud clock pulse. It:

Stores bits into an 8‑bit register

Pulses trigFSM when the final bit is received

Uses blocking assignments to ensure the data byte is stable before the FSM is triggered

Baud Clock (baudClk)
This module generates a sampling pulse every 10,417 system‑clock cycles, corresponding to 9600 baud at 100 MHz. It:

Resets when a start bit is detected

Samples exactly eight bits

Signals when the system is waiting for the next start bit

Motor Controller (ctrlMotor)
The motor FSM updates on the rising edge of trigFSM. It:

Interprets the received byte as two 4‑bit motor control fields

Drives left and right motor outputs (lMotor, rMotor)

Uses only one bit from each nibble in the current implementation

Start‑Bit Reset Logic (rstDriver)
This module detects the falling edge of the UART start bit and triggers a reset of the baud generator when appropriate.

Seven‑Segment Decoder (seven_seg_decoder)
Converts the received byte into two hexadecimal digits using a lookup table.

Seven‑Segment Driver (sevenSegDriver)
Multiplexes the two digits at a refresh rate determined by a clock divider.

Hardware Requirements
FPGA board with a 100 MHz system clock

Bluetooth serial module (such as HC‑05 or HC‑06)

Motor driver circuitry (MOSFETs or H‑bridge)

Two DC motors

Two‑digit seven‑segment display

Reconstructed or newly created constraints file (original is missing)

UART Command Format
The system expects an 8‑bit command where:

The upper nibble corresponds to left‑motor control

The lower nibble corresponds to right‑motor control

Matching nibbles indicate a valid command (original design intent)

Example patterns:

0000_0000 — stop both motors

1111_1111 — run both motors

1111_0000 — run left motor only

0000_1111 — run right motor only

Actual motor behavior depends on how the bits are interpreted in ctrlMotor.

Repository Structure
uart.sv — top‑level integration module

rxBit.sv — UART bit‑level receiver

baudClk.sv — baud‑rate generator

ctrlMotor.sv — motor‑control FSM

rstDriver.sv — start‑bit detection and baud reset

seven_seg_decoder.sv — byte‑to‑hex decoder

sevenSegDriver.sv — display multiplexer

Notes
The original XDC constraints file is missing and must be recreated.

Pin assignments will depend on your FPGA board and motor driver hardware.

The startup delay may need adjustment depending on the Bluetooth module used.

Pin assignments will depend on your FPGA board and motor driver hardware.

Unfortunately, the original test benches are also missing and must be recreated.

