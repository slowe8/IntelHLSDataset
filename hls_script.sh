# Authored by: 	Sean Lowe
# Decscription:	This script takes in the benchmark set, the specific benchmark
#		and the specific design iteration
#
#		The script then runs an HLS compilation, Quartus Compilation,
#		and Power Analysis on the specified design
#
#		The script then extracts the Power Analysis Summary into 
#		a CSV file

# arg1=benchmark_family arg2=benchmark arg3=design_file_name
base_dir=$PWD
benchmark_family=$1
benchmark=$2
design=$3

# Go to the specified source directory
if [ -d ./$benchmark_family/$benchmark/intelversions ]; then
	cd ./$benchmark_family/$benchmark/intelversions
else
	echo "Not a valid benchmark."
	exit 1
fi

# Run an HLS Compilation
# - We should consider making the target device an argument to this script
i++ -march=1ST110EN1F43E1VG -ghdl --clock 10ns --component $benchmark $design.c --simulator "none" -v -o $design

# Go to the created project directory
#cd ./$design.prj/quartus/

# Run a Quartus Compilation up to Fitting
#quartus_sh --flow compile quartus_compile

# Modify the Quartus settings file (.qsf) to include power analysis
#cat $base_dir/quartus_power_set >> ./quartus_compile.qsf

# Run a Power Analysis on the generated design
#quartus_pow quartus_compile

# Extract the Report Panel to a CSV file
# - We could consider extracting more Report Panels here or let it be
#   an argument to the script
# - All extracted data is stored in the data directory of the benchmark
#quartus_sh -t $base_dir/power_to_csv.tcl -project "quartus_compile" -panel "Power Analyzer||Power Analyzer Summary" -file ../../../data/$design.csv


