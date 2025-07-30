#!/bin/bash

# defines the input, dataset and output directories
input_dir="/group/bit150/Final/Unknown_sequences"
output_dir="/home/bit150-44/Processed_outputs"
dataset_dir="/home/bit150-44/Final"


# loops through all .fa files in the input directory so for each file in input directory
for fasta_file in "$input_dir"/*.fa; do

# extracts the basenames to use to create outputs
base_name=$(basename "$fasta_file" .fa)

# uses the basename of the files in the input to create a seperate directory for each output
sample_output_dir="$output_dir/$base_name"
    mkdir -p "$sample_output_dir"
	
# runs the nextclade command used to process the output
nextclade run -D "$dataset_dir" \
	-O "$sample_output_dir" \
	"$fasta_file"
done
