# CMOS Inverter – Layout Preparation

Preparing the simulation-verified CMOS inverter for fabrication in Magic VLSI.

## What Was Done

### Design & Verification

* Sized NMOS and PMOS for proper logic
* Verified operation with DC and transient analysis

### Schematic Cleanup

* Removed simulation-only components:
  * Voltage sources
  * Load capacitor
* Kept only fabrication elements (transistors + interconnects)

### Port Definition

| Signal | Type   | Function         |
|--------|--------|------------------|
| VIN    | Input  | Signal input     |
| VOUT   | Output | Signal output    |
| VDD    | Power  | Positive supply  |
| GND    | Ground | Ground rail      |

### LVS Setup

* Configured as top-level subcircuit
* Enabled netlist export for layout tools

## Critical Issue

* Transistor channel lengths too small for Sky130 PDK
* Minimum practical length: ~150 nm
* Must resize before layout to avoid DRC/LVS errors

---

**Stack**: Xschem · Magic VLSI · Sky130 PDK