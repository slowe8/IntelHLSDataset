onerror {abort all; exit -code 1;}
set VSIM_VERSION_STR "Questa Intel FPGA Edition-64 vsim 2023.3 Simulator 2023.07 Jul 17 2023"
set QSYS_SIMDIR .
source mentor/msim_setup.tcl
set USER_DEFINED_VERILOG_COMPILE_OPTIONS "+incdir+."
dev_com
com
if {$tcl_platform(platform) == "windows"} {
  set fname_svlib "/opt/Intel/intelFPGA_pro/20.4/hls/windows64/bin/hls_cosim_msim"
  set fname_svlib [string map { "\\" "/"} $fname_svlib]
} else {
  set fname_svlib "/opt/Intel/intelFPGA_pro/20.4/hls/host/linux64/lib/libhls_cosim_msim"
}
set USER_DEFINED_ELAB_OPTIONS "-dpioutoftheblue 1 -sv_lib $fname_svlib -voptargs=+acc"
elab
exit -code 0
