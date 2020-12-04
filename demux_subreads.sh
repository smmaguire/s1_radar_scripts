#!bin/bash
#
#$ -cwd
#$ -j y
#$ -S /bin/bash
#$ -pe smp 8
#$ -m e

source activate pacbio

len_filter=$1
multiplex_bam=$2
barcodes=$3
output_dir=$4 # no final slash in directory. 

#lima [options] <INPUT.bam|xml|fa|fq|gz> <BARCODES.fa> <OUTPUT.bam|xml|fa|fq|gz>

lima --split-bam-named --same --min-length $len_filter $multiplex_bam $barcodes $output_dir/s1_1.subreadset.xml