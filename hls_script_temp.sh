# Authored by: 	Sean Lowe (ASU), Allison Seigler (UT-Austin)
# Decscription:	This script takes in the benchmark set, the specific benchmark
#		and the specific design iteration
#
#		The script then runs an HLS compilation, Quartus Compilation,
#		and Power Analysis on the specified design
#
#		The script then extracts the Power Analysis Summary into 
#		a CSV file

# arg1=benchmark_family arg2=benchmark arg3=design_file_name
#! /bin/bash

# NOTE FROM ALLISON: this is what I used for the polybench scripts, ideally none of the lines are commented
# out in the final run, and the for loop is not hard coded.  I am not good at scripting files and prioritized
# something that works over something that is versatile, but I thought it was worth to add to git anyway

base_dir=$PWD
benchmark_family=$1
benchmark=$2
#design=$3


if [ -d ./$benchmark_family/ ]; then

	cd ./$benchmark_family/
else
	echo "Not a valid benchmark."
	exit 1
fi

#python3 templater_$benchmark_family.py $benchmark/opt_template.tcl $benchmark/src/$benchmark.c $benchmark

# Go to the specified source directory
if [ -d ./$benchmark/intelversions ]; then
	cd ./$benchmark/intelversions
else
	echo "Not a valid benchmark."
	exit 1
fi

# Run an HLS Compilation
# - We should consider making the target device an argument to this script
for ((i = 1 ; i < 577 ; i++)); do
	FILE=./"$benchmark"_"$i".c
	if [ -f "$FILE" ]; then
		#i++ -march=1ST110EN1F43E1VG -ghdl "$FILE" --simulator "none" -v -o "$benchmark"_"$i"
		# Go to the created project directory
		cd ./"$benchmark"_"$i".prj/quartus/
		# Run a Quartus Compilation up to Fitting
		quartus_sh --flow compile quartus_compile >> "$benchmark"_"$i"_compLog.txt
		if (($i % 100 == 0)); then
        		echo "$benchmark compile number $i complete" >> "$benchmark"_"$i".txt
		fi
		cd ../..
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


