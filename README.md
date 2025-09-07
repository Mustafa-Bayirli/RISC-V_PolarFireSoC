# RISC-V on PolarFire® SoC – Project

This repository contains my lab work and project implementation from the **Microchip RISC-V for PolarFire® FPGA training (Libero® SoC v2025.1, Discovery Kit)**.  
The training covered both the theoretical and practical aspects of RISC-V soft processors and their integration into FPGA designs.

---

## 📚 Training Overview
The training introduced:
- **RISC-V ISA basics** and Microchip’s **Mi-V ecosystem**
- Creating a Mi-V (RISC-V) subsystem in **Libero SoC**
- Adding and configuring IP blocks such as CoreGPIO, CoreUART, CoreTimer, and memory
- Applying timing/physical constraints, synthesis, layout, and verification
- Generating bitstreams and programming the PolarFire® SoC Discovery Kit
- Writing and debugging firmware using **SoftConsole**

---

## 🛠️ Tools Used
- **Libero SoC v2025.1**
- **QuestaSim Pro ME 2024.3**
- **Synopsys Synplify Pro V-2023.09M-5**
- **FlashPro Express v2025.1**
- **SoftConsole v2022.2**
- **PolarFire® SoC Discovery Kit**

---

## 🧩 Key Lab Steps
1. **Created Mi-V PolarFire SoC Design** in Libero SoC  
2. **Instantiated and connected IP cores** (MIV_RV32, CoreAPB3, CoreGPIO, CoreUARTapb, CoreTimer, etc.)  
3. **Simulated the design** in QuestaSim and verified timer + GPIO behavior  
4. **Applied constraints and synthesized** the design  
5. **Generated FPGA bitstream** and programmed the Discovery Kit  
6. **Built firmware applications** in SoftConsole (GPIO blinking and timer interrupt handling)

---

## 🚀 Skills Gained
- RISC-V architecture (RV32I + extensions)  
- FPGA SoC design flow (Libero SoC)  
- Simulation and verification with QuestaSim  
- Timing and physical constraints in FPGA design  
- Board bring-up and debugging on PolarFire® SoC  
- Firmware development for RISC-V soft processors  

---

## 🙏 Acknowledgements
Special thanks to **Michie Shiroma** and **Samir Amin** from Microchip Technology for delivering this excellent training.  
