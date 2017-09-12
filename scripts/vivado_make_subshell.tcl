set top_module hcode_subshell_1
set device_type xc7vx485tffg1761-2

add_files ./ip-src/
read_verilog ./shell-src/hcode_subshell_1.v
synth_design -top $top_module -part $device_type -mode out_of_context
write_checkpoint ./ip-src/$top_module.dcp -force

