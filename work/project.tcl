set projDir "C:/Users/presc/Desktop/School/50.002\ Comp\ Struct/ALU\ stuff/ALU_new/Week8_ALU/work/vivado"
set projName "Week8_ALU"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/presc/Desktop/School/50.002\ Comp\ Struct/ALU\ stuff/ALU_new/Week8_ALU/work/verilog/au_top_0.v" "C:/Users/presc/Desktop/School/50.002\ Comp\ Struct/ALU\ stuff/ALU_new/Week8_ALU/work/verilog/alu_1.v" "C:/Users/presc/Desktop/School/50.002\ Comp\ Struct/ALU\ stuff/ALU_new/Week8_ALU/work/verilog/alufn_counter_2.v" "C:/Users/presc/Desktop/School/50.002\ Comp\ Struct/ALU\ stuff/ALU_new/Week8_ALU/work/verilog/reset_conditioner_3.v" "C:/Users/presc/Desktop/School/50.002\ Comp\ Struct/ALU\ stuff/ALU_new/Week8_ALU/work/verilog/multi_seven_seg_4.v" "C:/Users/presc/Desktop/School/50.002\ Comp\ Struct/ALU\ stuff/ALU_new/Week8_ALU/work/verilog/delayer_5.v" "C:/Users/presc/Desktop/School/50.002\ Comp\ Struct/ALU\ stuff/ALU_new/Week8_ALU/work/verilog/fasixteen_6.v" "C:/Users/presc/Desktop/School/50.002\ Comp\ Struct/ALU\ stuff/ALU_new/Week8_ALU/work/verilog/comparesixteen_7.v" "C:/Users/presc/Desktop/School/50.002\ Comp\ Struct/ALU\ stuff/ALU_new/Week8_ALU/work/verilog/shiftersixteen_8.v" "C:/Users/presc/Desktop/School/50.002\ Comp\ Struct/ALU\ stuff/ALU_new/Week8_ALU/work/verilog/boolesixteen_9.v" "C:/Users/presc/Desktop/School/50.002\ Comp\ Struct/ALU\ stuff/ALU_new/Week8_ALU/work/verilog/counter_10.v" "C:/Users/presc/Desktop/School/50.002\ Comp\ Struct/ALU\ stuff/ALU_new/Week8_ALU/work/verilog/seven_seg_11.v" "C:/Users/presc/Desktop/School/50.002\ Comp\ Struct/ALU\ stuff/ALU_new/Week8_ALU/work/verilog/decoder_12.v" "C:/Users/presc/Desktop/School/50.002\ Comp\ Struct/ALU\ stuff/ALU_new/Week8_ALU/work/verilog/counter_13.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "C:/Users/presc/Desktop/School/50.002\ Comp\ Struct/ALU\ stuff/ALU_new/Week8_ALU/work/constraint/alchitry.xdc" "C:/Users/presc/Desktop/School/50.002\ Comp\ Struct/ALU\ stuff/ALU_new/Week8_ALU/work/constraint/io.xdc" "C:/Program\ Files/Alchitry/Alchitry\ Labs/library/components/au.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 8
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
