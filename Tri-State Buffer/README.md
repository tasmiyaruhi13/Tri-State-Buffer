# Tri-State Buffer Using Verilog

## Overview

This project implements a 1-bit Tri-State Buffer using Verilog HDL.

A tri-state buffer has three possible output states:

- Logic 0
- Logic 1
- High impedance (Z)

The high-impedance state allows the buffer to disconnect its output from a shared bus.

## Features

- 1-bit tri-state buffer
- Verilog HDL implementation
- Enable control input
- High-impedance output
- Separate testbench
- Simulation-ready design

## Block Diagram

```text
             A
             |
             v
       +-------------+
       | Tri-State   |
       |   Buffer    |------ Y
       +-------------+
             ^
             |
          Enable




## Author

Tasmiya Ruhi