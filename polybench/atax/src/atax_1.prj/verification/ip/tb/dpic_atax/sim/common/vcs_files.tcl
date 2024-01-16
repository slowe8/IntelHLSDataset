
namespace eval dpic_atax {
  proc get_memory_files {QSYS_SIMDIR} {
    set memory_files [list]
    return $memory_files
  }
  
  proc get_common_design_files {QSYS_SIMDIR} {
    set design_files [dict create]
    return $design_files
  }
  
  proc get_design_files {QSYS_SIMDIR} {
    set design_files [dict create]
    dict set design_files "hls_sim_stream_sink_dpi_bfm.sv"      "$QSYS_SIMDIR/../hls_sim_component_dpi_controller_10/sim/hls_sim_stream_sink_dpi_bfm.sv"     
    dict set design_files "hls_sim_stream_source_dpi_bfm.sv"    "$QSYS_SIMDIR/../hls_sim_component_dpi_controller_10/sim/hls_sim_stream_source_dpi_bfm.sv"   
    dict set design_files "hld_sim_latency_tracker.sv"          "$QSYS_SIMDIR/../hls_sim_component_dpi_controller_10/sim/hld_sim_latency_tracker.sv"         
    dict set design_files "hls_sim_component_dpi_controller.sv" "$QSYS_SIMDIR/../hls_sim_component_dpi_controller_10/sim/hls_sim_component_dpi_controller.sv"
    dict set design_files "dpic_atax.v"                         "$QSYS_SIMDIR/dpic_atax.v"                                                                   
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
