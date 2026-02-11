# CMOS Inverter Design and Layout using Sky130 PDK

This repository documents the complete design flow of a CMOS inverter using open-source VLSI tools and the Sky130 PDK. The project covers schematic design, DC analysis, transient analysis, and physical layout in Magic VLSI.

The goal is to move from a verified schematic to a fabrication-ready layout following proper IC design methodology.

## Tools Used

* **Xschem** – schematic capture
* **Ngspice** – DC and transient simulation
* **Magic VLSI** – physical layout
* **Sky130 PDK**
* Linux environment

## Project Structure
```
EEE-301-inverter-layout-design/
│
├── schematic-design/          # CMOS inverter schematic design
├── dc-analysis/        # DC sweep (VTC) analysis
├── transient-analysis/ # Transient response analysis
├── actual-layout/             # Physical layout in Magic VLSI
└── README.md           # Project overview (this file)
```

Each folder contains its own detailed README explaining the steps, setup, and results.

## Design Flow

### 1. Schematic Design (Xschem)

* NMOS and PMOS imported from Sky130 PDK
* Input, output, and power ports defined
* Simulation-only components removed for layout preparation

📁 `schematic/`

### 2. DC Analysis (Voltage Transfer Characteristic)

* Performed DC sweep on input voltage
* Plotted VTC curve
* Studied effect of transistor sizing
* Determined switching threshold (Vm ≈ VDD/2 for balanced design)

📁 `dc_analysis/`

### 3. Transient Analysis

* Applied pulse input (Vin)
* Observed inverter switching behavior
* Verified correct logic inversion
* Measured rise and fall transitions

📁 `transient_analysis/`

### 4. Physical Layout (Magic VLSI)

* Prepared schematic with IO ports (`iopin`, `ipin`, `opin`)
* Generated layout using Magic
* Routed using Metal1 and Metal2
* Verified with Design Rule Check (DRC = 0)

📁 `layout/`

## Key Learning Outcomes

* Understanding CMOS inverter operation
* Performing DC and transient simulations
* Preparing schematic for physical layout
* Creating layout using Magic VLSI
* Applying DRC rules with Sky130 PDK
* Following full schematic-to-layout flow

## Files Included

* `.sch` – schematic files
* `.mag` – layout files
* `.spice` – netlists
* `.png` – waveform and layout images
* Individual README files per section

## Future Work

* Layout vs Schematic (LVS)
* Parasitic extraction
* Post-layout simulation
* Extension to larger logic blocks

## Author

**Abiodun Oluwatimilehin Oluwole**  
Computer Engineering Student  
Obafemi Awolowo University (OAU)