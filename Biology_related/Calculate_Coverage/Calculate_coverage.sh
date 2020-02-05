#!/bin/bash

# Calculate coverage after sequencing
# Better to do this with smaller regions or chromosomes, since the files get huge


samtools depth Your_File.bam > Coverage_of_Your_File.txt