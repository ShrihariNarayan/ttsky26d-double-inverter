v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 200 -50 200 20 {lab=inverted}
N 160 -80 160 50 {lab=input_DI}
N 200 -10 340 -10 {lab=inverted}
N 200 80 200 110 {lab=VSS}
N 200 -140 200 -110 {lab=VDD}
N 200 50 280 50 {lab=VSS}
N 280 50 280 110 {lab=VSS}
N 200 110 280 110 {lab=VSS}
N 200 -140 280 -140 {lab=VDD}
N 280 -140 280 -80 {lab=VDD}
N 200 -80 280 -80 {lab=VDD}
N 380 -50 380 20 {lab=output_DI}
N 340 -80 340 50 {lab=inverted}
N 380 80 380 110 {lab=VSS}
N 380 -140 380 -110 {lab=VDD}
N 380 50 460 50 {lab=VSS}
N 460 50 460 110 {lab=VSS}
N 380 110 460 110 {lab=VSS}
N 380 -140 460 -140 {lab=VDD}
N 460 -140 460 -80 {lab=VDD}
N 380 -80 460 -80 {lab=VDD}
N 380 -10 510 -10 {lab=output_DI}
N 120 -10 160 -10 {lab=input_DI}
C {iopin.sym} -50 -50 0 0 {name=p1 lab=VDD}
C {iopin.sym} -50 0 0 0 {name=p2 lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 180 50 0 0 {name=M1
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 180 -80 0 0 {name=M2
W=1
L=0.15
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
C {lab_wire.sym} 200 110 0 0 {name=p5 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 200 -140 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 360 50 0 0 {name=M3
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 360 -80 0 0 {name=M4
W=20
L=0.15
nf=20
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
C {lab_wire.sym} 380 110 0 0 {name=p6 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 380 -140 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {ipin.sym} 120 -10 0 0 {name=p9 lab=input_DI}
C {opin.sym} 510 -10 0 0 {name=p4 lab=output_DI}
C {lab_wire.sym} 340 -10 0 0 {name=p8 sig_type=std_logic lab=inverted}
