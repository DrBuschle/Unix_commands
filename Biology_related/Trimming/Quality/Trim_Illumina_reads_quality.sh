#!/bin/bash

java -jar /path/trimmomatic-0.39.jar PE -basein Name_R1.fastq.gz -baseout Trimmed_Name_R1.fastq.gz LEADING:20 TRAILING:20

# -basein give forward read, program will find the reverse if named in the same pattern, like R2
# -baseout naming will be used to name outputs for forward/reverse reads with paired (P) and unpaired (U) reads
# LEADING: 20   cuts off leading bases with a quality less than 20
# TRAILING: 20  cuts off leading bases with a quality less than 20