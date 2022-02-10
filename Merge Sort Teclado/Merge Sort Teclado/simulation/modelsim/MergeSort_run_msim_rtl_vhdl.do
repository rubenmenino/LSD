transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Universidade/LSDig/Projects/Merge Sort/Mux4_1_8.vhd}
vcom -93 -work work {D:/Universidade/LSDig/Projects/Merge Sort/Bin7SegDecoder.vhd}
vcom -93 -work work {D:/Universidade/LSDig/Projects/Merge Sort/Mux2_1.vhd}
vcom -93 -work work {D:/Universidade/LSDig/Projects/Merge Sort/pseudo_random_generator.vhd}
vcom -93 -work work {D:/Universidade/LSDig/Projects/Merge Sort/FreqDivider.vhd}
vcom -93 -work work {D:/Universidade/LSDig/Projects/Merge Sort/ControlUnit.vhd}
vcom -93 -work work {D:/Universidade/LSDig/Projects/Merge Sort/MergeSortDemo.vhd}
vcom -93 -work work {D:/Universidade/LSDig/Projects/Merge Sort/InsertedCount.vhd}
vcom -93 -work work {D:/Universidade/LSDig/Projects/Merge Sort/UserCount.vhd}
vcom -93 -work work {D:/Universidade/LSDig/Projects/Merge Sort/ShiftRegister.vhd}
vcom -93 -work work {D:/Universidade/LSDig/Projects/Merge Sort/Merge_lvl1.vhd}
vcom -93 -work work {D:/Universidade/LSDig/Projects/Merge Sort/Merge_lvl2.vhd}
vcom -93 -work work {D:/Universidade/LSDig/Projects/Merge Sort/Merge_lvl3.vhd}
vcom -93 -work work {D:/Universidade/LSDig/Projects/Merge Sort/DisplayControl.vhd}

