v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 520 -510 1320 -110 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x2=2e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="pin_out
out
in"
color="10 15 11"
dataset=-1
unitx=1
logx=0
logy=0
x1=8.0758323e-16}
B 2 520 100 1320 500 {flags=graph
y1=-2.9e-06
y2=0.0014
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=8.0758323e-16
x2=2e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color=4
node=i(vmeas)}
N 380 -60 470 -60 {lab=out}
N 30 -80 80 -80 {lab=in}
N 380 -40 470 -40 {lab=VSS}
N 640 -40 680 -40 {lab=pin_out}
N 680 -40 680 -30 {lab=pin_out}
N 680 -40 760 -40 {lab=pin_out}
N 580 -60 580 -40 {lab=out}
N 470 -60 580 -60 {lab=out}
N 580 -60 580 -40 {lab=out}
N 380 -80 440 -80 {lab=#net1}
C {devices/launcher.sym} -140 80 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran
"
}
C {devices/code.sym} -160 -90 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {double_inverter.sym} 230 -60 0 0 {name=x1}
C {vsource.sym} 50 -200 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} 150 -200 0 0 {name=V2 value=0 savecurrent=false}
C {lab_wire.sym} 50 -230 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 150 -230 0 0 {name=p2 sig_type=std_logic lab=VSS
}
C {gnd.sym} 50 -170 0 0 {name=l1 lab=GND}
C {gnd.sym} 150 -170 0 0 {name=l2 lab=0}
C {lab_wire.sym} 440 -140 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 470 -40 2 0 {name=p4 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 580 -60 0 0 {name=p6 sig_type=std_logic lab=out
}
C {res.sym} 610 -40 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} 680 0 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 680 30 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 760 -40 2 0 {name=p7 sig_type=std_logic lab=pin_out
}
C {simulator_commands_shown.sym} 60 130 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.options savecurrents

vin in 0 pulse 0 1.8 5n 1n 1n 50n 100n
.control
save all
tran 100p 200n

write testbench.raw

.endc
"}
C {ipin.sym} 30 -80 0 0 {name=p8 lab=in}
C {devices/ammeter.sym} 440 -110 0 0 {name=vmeas}
