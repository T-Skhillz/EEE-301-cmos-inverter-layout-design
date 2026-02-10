v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 340 -100 340 -80 {lab=GND}
N 340 -220 340 -160 {lab=Vout}
N 260 -250 300 -250 {lab=Vin}
N 260 -250 260 -130 {lab=Vin}
N 260 -130 300 -130 {lab=Vin}
N 180 -190 260 -190 {lab=Vin}
N 340 -190 540 -190 {lab=Vout}
N 340 -300 340 -280 {lab=VDD}
N -210 -250 -210 -220 {lab=Vin}
N -270 -250 -270 -220 {lab=VDD}
N 340 -130 360 -130 {lab=GND}
N 360 -130 360 -90 {lab=GND}
N 340 -90 360 -90 {lab=GND}
N 340 -250 360 -250 {lab=VDD}
N 360 -290 360 -250 {lab=VDD}
N 340 -290 360 -290 {lab=VDD}
N 480 -190 480 -170 {lab=Vout}
N 480 -110 480 -90 {lab=GND}
C {/home/timi/eda_tools/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 320 -130 0 0 {name=1
W=1u
L=0.3u
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
prefix=X
}
C {/home/timi/eda_tools/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 320 -250 0 0 {name=2
W=2u
L=0.3u
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {gnd.sym} 340 -80 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 340 -300 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 180 -190 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {vsource.sym} -210 -190 0 0 {name=V1 value=PULSE(0,1.8,0ns,1ns,1ns,50ns,104ns) savecurrent=false}
C {vsource.sym} -270 -190 0 0 {name=V2 value=1.8 savecurrent=false}
C {gnd.sym} -210 -160 0 0 {name=l2 lab=GND}
C {gnd.sym} -270 -160 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -210 -250 1 0 {name=p3 sig_type=std_logic lab=Vin}
C {lab_pin.sym} -270 -250 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 540 -190 2 0 {name=p5 sig_type=std_logic lab=Vout}
C {capa.sym} 480 -140 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 480 -90 0 0 {name=l4 lab=GND}
C {code_shown.sym} -270 -50 0 0 {name=NGSPICE only_toplevel=true
value="
.lib "/home/timi/eda_tools/open_pdks/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice" tt

.tran 10ns 100ns

.control
  save all
  run
  plot v(Vout) v(Vin)
.endc
"}
