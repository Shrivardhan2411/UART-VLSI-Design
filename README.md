**🚀 UART VLSI Design using Verilog**



**📌 Overview**



This project implements a \*\*UART (Universal Asynchronous Receiver Transmitter)\*\* using Verilog HDL.

It includes transmitter, receiver, and baud rate generator modules, along with simulation and synthesis using industry tools.



**🧩 Design Architecture**



The design consists of three main modules:



**Transmitter** – Sends serial data using FSM

**Receiver** – Receives data using 16x oversampling

**Baud Rate Generator** – Generates timing signals for UART communication



**⚙️ Features**



\-FSM-based UART transmitter and receiver

\-16x oversampling for accurate reception

\-Parameterized baud rate generation

\-Loopback testing implemented

\-Modular and scalable design



**🧪 Simulation**



\-Tools Used: **Icarus Verilog, Cadence NCSim**

\-Verified correct data transmission and reception

\-Example outputs:



&#x20; \* Input: `0x41` → Output: `0x41`

&#x20; \* Input: `0x55` → Output: `0x55`



**🏗️ Synthesis**



\-Tool Used: **Cadence RTL Compiler (Genus)**

\-Generated gate-level netlist

\-Performed timing, area, and power analysis



**📊 Results**



\-Functional verification successful ✅

\-Timing analysis performed

\-Critical path identified in baud rate generator

\-Timing optimization explored



**🛠️ Tools \& Technologies**



\-Verilog HDL

\-Icarus Verilog

\-Cadence NCSim

\-Cadence RTL Compiler

\-Git \& GitHub



**📁 Project Structure**



UART-VLSI-Design/

│

├── RTL/            # Verilog source files

├── test bench/     # Testbench files

├── Synthesis/      # Netlist and reports

├── tcl/            # TCL scripts for synthesis

├── README.md



**🚀 Future Work**



\-Complete physical design using Cadence Encounter

\-Improve timing closure

\-Optimize power consumption



**👨‍💻 Author**



**Shrivardhan Baviskar**

B.Tech (Electronics \& Telecommunication Engineering)

Vishwakarma Institute of Technology, Pune



**⭐ Acknowledgment**



This project was developed as part of learning and applying VLSI design concepts using industry-standard tools.



