#!/bin/bash

# Calculate coverage after sequencing
# Better to do this with smaller regions or chromosomes, since the files get huge


samtools depth Your_File.bam > Coverage_of_Your_File.txt


# also include all zero values
samtools depth -a Your_File.bam > Coverage_of_Your_File.txt


# also include all zero values, but keep it to a certain region

samtools depth -a -r chrx:start_position-end_postion Your_File.bam > Coverage_of_Your_File.txt
