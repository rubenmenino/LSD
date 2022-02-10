onerror {exit -code 1}
vlib work
vcom -work work MergeSort.vho
vcom -work work Merge_lvl3.vwf.vht
vsim -novopt -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.Merge_lvl3_vhd_vec_tst
vcd file -direction MergeSort.msim.vcd
vcd add -internal Merge_lvl3_vhd_vec_tst/*
vcd add -internal Merge_lvl3_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f




