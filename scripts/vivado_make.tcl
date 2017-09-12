set ch 1
open_checkpoint ./shell_route.dcp
update_design -black_box -cell ip_$ch
lock_design -level routing
read_checkpoint -cell [get_cells ip_$ch] ./ip-src/hcode_subshell_$ch.dcp
opt_design
place_design
phys_opt_design
route_design
phys_opt_design
report_utilization -hierarchical -file utilization.rpt
report_timing -file timing.rpt
write_bitstream bitstream.bit -cell [get_cells ip_$ch] -force
