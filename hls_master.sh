# Authored by: 	Sean Lowe
# Description: 	This file takes in a benchmark set and a specific benchmark in 
#		the set an runs each design iteration in the source file for 
#		the benchmark through HLS and Quartus Compilation

benchmark_set=$1
benchmark=$2

if [ -d $benchmark_set/$benchmark/src/ ]; then # Check if this is directory exits

	# Loop through each object in the source directory
	for file in $benchmark_set/$benchmark/src/*; do 
       		if [ -f $file ]; then # Check if the object is a file 
	       		# Check if the object is the header file
			

			# Otherwise, run the flow script
			# These two commands clip the unwanted pieces of the path
	       		target=${file#${benchmark_set}/${benchmark}/src/}
	       		target=${target%.c}
			if [ $target = "atax.h" ]; then
		       		continue
			fi
	       		./hls_script.sh $benchmark_set $benchmark $target
			echo "Compiling ${file}..."
		fi
	done
else # Notify the user if the benchmark does not exist
	echo "Not a valid benchmark."
	echo "./hls_master.sh <benchmark_set> <benchmark>"
fi
