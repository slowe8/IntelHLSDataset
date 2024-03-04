# Authored by: 	Sean Lowe (ASU), Allison Seigler (UT-Austin)
# Decscription:	This script takes in the benchmark set, the specific benchmark
#		and the specific design iteration
#
#		The script then runs an HLS compilation, Quartus Compilation,
#		and Power Analysis on the specified design
#
#		The script then extracts the Power Analysis Summary into 
#		a CSV file

# arg1=benchmark_family arg2=benchmark arg3=template file name arg4= source file name
# Example call: source hls_script.sh machsuite aes_table template_table.tcl aes_table.c
#! /bin/bash


base_dir=$PWD
benchmark_family=$1
benchmark=$2
template=$3
src=$4
bench_num=$5

if [ -d ./$benchmark_family/ ]; then

	cd ./$benchmark_family/
else
	echo "Not a valid benchmark."
	exit 1
fi

python3 templater_$benchmark_family.py $benchmark/$template $benchmark/$src $benchmark

# Go to the specified source directory
if [ -d ./$benchmark/intelversions ]; then
	cd ./$benchmark/intelversions
else
	echo "Not a valid benchmark."
	exit 1
fi

# Run an HLS Compilation
# - We should consider making the target device an argument to this script
for ((i = 1 ; i < (($bench_num + 1)) ; i++)); do
	FILE=./"$benchmark"_"$i".c
	if [ -f "$FILE" ]; then
		i++ -march=1ST110EN1F43E1VG -ghdl "$FILE" --simulator "none" -v -o "$benchmark"_"$i"
		# Go to the created project directory
		#cd ./"$benchmark"_"$i".prj/quartus/
		# Run a Quartus Compilation up to Fitting
		#quartus_sh --flow compile quartus_compile >> "$benchmark"_"$i"_compLog.txt
		#cd ../..
	fi
done


# Modify the Quartus settings file (.qsf) to include power analysis
#cat $base_dir/quartus_power_set >> ./quartus_compile.qsf

# Run a Power Analysis on the generated design
#quartus_pow quartus_compile

# Extract the Report Panel to a CSV file
# - We could consider extracting more Report Panels here or let it be
#   an argument to the script
# - All extracted data is stored in the data directory of the benchmark
#quartus_sh -t $base_dir/power_to_csv.tcl -project "quartus_compile" -panel "Power Analyzer||Power Analyzer Summary" -file ../../../data/$design.csv


