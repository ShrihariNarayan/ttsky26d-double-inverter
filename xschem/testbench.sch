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
x2=1.9e-07
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="pin_out
out
in
pin_out_parax"
color="10 15 11 12"
dataset=-1
unitx=1
logx=0
logy=0
x1=-9.9999991e-09
divx=5}
B 2 520 100 1320 500 {flags=graph
y1=-2.9e-06
y2=0.0014
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-9.9999991e-09
x2=1.9e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="12 11"
node="i(vmeas1)
i(vmeas)"}
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
N 400 660 490 660 {lab=out_parax}
N 50 640 100 640 {lab=in}
N 400 680 490 680 {lab=VSS}
N 660 680 700 680 {lab=pin_out_parax}
N 700 680 700 690 {lab=pin_out_parax}
N 700 680 780 680 {lab=pin_out_parax}
N 600 660 600 680 {lab=out_parax}
N 490 660 600 660 {lab=out_parax}
N 600 660 600 680 {lab=out_parax}
N 400 640 460 640 {lab=#net2}
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
C {double_inverter.sym} 250 660 0 0 {name=x2

schematic=double_inverter_parax
spice_sym_def="tcleval(.include [file normalize ../mag/double_inverter.sim.spice])"
tclcommand="textwindow [file normalize ../mag/double_inverter.sim.spice]"}
C {lab_wire.sym} 460 580 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 490 680 2 0 {name=p9 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 600 660 0 0 {name=p10 sig_type=std_logic lab=out_parax
}
C {res.sym} 630 680 3 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} 700 720 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 700 750 0 0 {name=l6 lab=GND}
C {lab_wire.sym} 780 680 2 0 {name=p11 sig_type=std_logic lab=pin_out_parax

}
C {ipin.sym} 50 640 0 0 {name=p12 lab=in}
C {devices/ammeter.sym} 460 610 0 0 {name=vmeas1}
