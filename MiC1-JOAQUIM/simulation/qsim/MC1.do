onerror {exit -code 1}
vlib work
vlog -work work MC1.vo
vlog -work work DATAPATH3.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.DATAPATH_vlg_vec_tst -voptargs="+acc"
vcd file -direction MC1.msim.vcd
vcd add -internal DATAPATH_vlg_vec_tst/*
vcd add -internal DATAPATH_vlg_vec_tst/i1/*
run -all
quit -f
