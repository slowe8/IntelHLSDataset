onerror {abort all; puts stderr "The simulation process encountered an error and has aborted."; exit -code 1;}
set VSIM_VERSION_STR "Questa Intel FPGA Edition-64 vsim 2023.3 Simulator 2023.07 Jul 17 2023"
if {$tcl_platform(platform) == "windows"} {
  cd tb/sim
  set QSYS_SIMDIR .
  set fname_svlib "/opt/Intel/intelFPGA_pro/20.4/hls/windows64/bin/hls_cosim_msim"
  set fname_svlib [string map { "\\" "/"} $fname_svlib]
  source $QSYS_SIMDIR/mentor/msim_setup.tcl
} else {
  set QSYS_SIMDIR tb/sim
  set fname_svlib "/opt/Intel/intelFPGA_pro/20.4/hls/host/linux64/lib/libhls_cosim_msim"
  source $QSYS_SIMDIR/mentor/msim_setup_run.tcl
}
# Suppress warnings from the std arithmetic libraries
set StdArithNoWarnings 1
set USER_DEFINED_ELAB_OPTIONS "+nowarnTFMPC -dpioutoftheblue 1 -sv_lib $fname_svlib -voptargs=+acc"
elab
onfinish {stop}
quietly set StdArithNoWarnings 1
log -r *
run -all
set failed [expr [coverage attribute -name TESTSTATUS -concise] > 1]
exit -code ${failed}
