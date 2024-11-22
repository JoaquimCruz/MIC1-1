onerror {exit -code 1}
vlib work
vlog -work work MIC1.vo
vlog -work work mpc_generator.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.MPC_GENERATOR_vlg_vec_tst -voptargs="+acc"
vcd file -direction MIC1.msim.vcd
vcd add -internal MPC_GENERATOR_vlg_vec_tst/*
vcd add -internal MPC_GENERATOR_vlg_vec_tst/i1/*
run -all
quit -f
