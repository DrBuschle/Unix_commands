#!/bin/bash

# so far I can only use this line, but I don't understand it so far

# extract the unique reads from a fastq file
gunzip -c Your_file_of_choise.ending | paste - - - - | LC_ALL=C sort -t$'\t' -k2,2 -u | tr "\t" "\n"  > outputfile.extension



# or as loop starting with gz files

for Files in `ls *.fastq.gz`; do
Files_cut=`basename $Files .fastq.gz`
Files_cut_extension=`echo ${Files_cut}_unique.fastq`

# https://www.biostars.org/p/146583/
gunzip -c $Files | paste - - - - | LC_ALL=C sort -t$'\t' -k2,2 -u | tr "\t" "\n"  > $Files_cut_extension;
done
