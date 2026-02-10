# CMOS Inverter – Transient Analysis

## Overview

This folder shows the transient analysis of the CMOS inverter. It uses the schematic `inverter.sch` and the Sky130 SPICE model `trans.spice`. Open `inverter.sch` in Xschem to run the simulation and see the results.

Transient analysis helps verify that the inverter works correctly and characterizes switching delays.

## Setup

### Input Signal

* **Vin**: Pulse voltage source simulating digital transitions (0 → 1 → 0)

### Output Observation

* **Vout**: Voltage at the inverter output, showing rise/fall response to Vin

### Load

* **Cload**: Capacitor at the output models the inverter driving other gates

## Simulation Configuration

### SPICE Directive

Use the `.tran` directive in Xschem/Ngspice:
```spice
.tran 10ns 100ns
```

This runs the simulation from 10 ns to 100 ns.

## Analysis and Results

### Steps to Verify

1. Plot Vout vs Time alongside Vin vs Time
2. Check that the output inverts the input correctly
3. Measure switching delays (propagation delays)
4. Analyze rise and fall times

### Expected Behavior

* Output switches cleanly between logic 0 (GND) and logic 1 (VDD)
* Rise and fall times within expected ranges
* No significant ringing or oscillations

## Transient Response Waveform

![Transient Response](trans_waveform.png)

*Figure: Input (Vin) and Output (Vout) waveforms showing inverter switching behavior*

## Observations

* **X-axis**: time (ns)
* **Input Vin (blue)**: pulse waveform (0 → 1.8V → 0V)
* **Output Vout (red)**: inverted response
* Clear rise and fall transitions
* Inverter operation verified: Vin high → Vout low, Vin low → Vout high

## Notes

* Open `inverter.sch` to see the schematic used for this simulation
* Open `trans.spice` to view the transistor models
* Choose proper timestep for accurate waveforms
* Capacitive load affects switching speed
* Temperature and process variations can impact timing