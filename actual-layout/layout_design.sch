v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 100 90 100 110 {lab=VSS}
N 100 -30 100 30 {lab=Vout}
N 20 -60 60 -60 {lab=Vin}
N 20 -60 20 60 {lab=Vin}
N 20 60 60 60 {lab=Vin}
N -60 0 20 0 {lab=Vin}
N 100 0 300 0 {lab=Vout}
N 100 -110 100 -90 {lab=VDD}
N 100 60 120 60 {lab=VSS}
N 120 60 120 100 {lab=VSS}
N 100 100 120 100 {lab=VSS}
N 100 -60 120 -60 {lab=VDD}
N 120 -100 120 -60 {lab=VDD}
N 100 -100 120 -100 {lab=VDD}
C {/home/timi/eda_tools/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 80 60 0 0 {name=1
W=0.42u
L=0.15u
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
C {/home/timi/eda_tools/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 80 -60 0 0 {name=2
W=10u
L=0.15u
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
C {iopin.sym} 100 -110 3 0 {name=p3 lab=VDD}
C {ipin.sym} -60 0 0 0 {name=p4 lab=Vin}
C {iopin.sym} 100 110 1 0 {name=p7 lab=VSS}
C {opin.sym} 300 0 0 0 {name=p6 lab=Vout}
