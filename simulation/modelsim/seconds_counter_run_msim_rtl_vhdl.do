transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/GUCian/H S5/Digital System Design/Ass1_Counter/seconds_counter.vhd}

vcom -93 -work work {D:/GUCian/H S5/Digital System Design/Ass1_Counter/simulation/modelsim/seconds_counter.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  testbenchForCounter

add wave *
view structure
view signals
run -all
