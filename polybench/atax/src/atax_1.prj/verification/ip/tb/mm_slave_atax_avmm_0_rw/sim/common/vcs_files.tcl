
namespace eval mm_slave_atax_avmm_0_rw {
  proc get_memory_files {QSYS_SIMDIR} {
    set memory_files [list]
    return $memory_files
  }
  
  proc get_common_design_files {QSYS_SIMDIR} {
    set design_files [dict create]
    dict set design_files "altera_common_sv_packages::avalon_lvip_verbosity_pkg"       "$QSYS_SIMDIR/../hls_sim_mm_slave_dpi_bfm_10/sim/verbosity_pkg.sv"       
    dict set design_files "altera_common_sv_packages::avalon_vip_avalon_mm_pkg"        "$QSYS_SIMDIR/../hls_sim_mm_slave_dpi_bfm_10/sim/avalon_mm_pkg.sv"       
    dict set design_files "altera_common_sv_packages::avalon_vip_avalon_utilities_pkg" "$QSYS_SIMDIR/../hls_sim_mm_slave_dpi_bfm_10/sim/avalon_utilities_pkg.sv"
    return $design_files
  }
  
  proc get_design_files {QSYS_SIMDIR} {
    set design_files [dict create]
    dict set design_files "altera_avalon_mm_slave_bfm.sv" "$QSYS_SIMDIR/../hls_sim_mm_slave_dpi_bfm_10/sim/altera_avalon_mm_slave_bfm.sv"
    dict set design_files "hls_sim_mm_slave_dpi_bfm.sv"   "$QSYS_SIMDIR/../hls_sim_mm_slave_dpi_bfm_10/sim/hls_sim_mm_slave_dpi_bfm.sv"  
    dict set design_files "mm_slave_atax_avmm_0_rw.v"     "$QSYS_SIMDIR/mm_slave_atax_avmm_0_rw.v"                                       
    return $design_files
  }
  
  proc get_elab_options {SIMULATOR_TOOL_BITNESS} {
    set ELAB_OPTIONS ""
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $ELAB_OPTIONS
  }
  
  
  proc get_sim_options {SIMULATOR_TOOL_BITNESS} {
    set SIM_OPTIONS ""
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $SIM_OPTIONS
  }
  
  
  proc get_env_variables {SIMULATOR_TOOL_BITNESS} {
    set ENV_VARIABLES [dict create]
    set LD_LIBRARY_PATH [dict create]
    dict set ENV_VARIABLES "LD_LIBRARY_PATH" $LD_LIBRARY_PATH
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $ENV_VARIABLES
  }
  
  
}
