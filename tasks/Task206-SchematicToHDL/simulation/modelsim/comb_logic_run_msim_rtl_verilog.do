transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/git/DigitalSystemsEmma/tasks/Task206-SchematicToHDL {C:/git/DigitalSystemsEmma/tasks/Task206-SchematicToHDL/comb_logic.v}

