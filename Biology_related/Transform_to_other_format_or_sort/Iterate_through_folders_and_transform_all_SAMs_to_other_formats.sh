#!/bin/bash

#set working directory

cd 

# start outer loop to iterate through different folders (containing a PATTERN)

for folders in `ls -d */|grep 'PATTERN'`;do

cd $folders

# create folder, which will be needed
mkdir 2_SAMs
mkdir 3_BAMs
mkdir 4_Sorted_BAMs_plus_index
mkdir 5_BigWigs

cd 1_Original_files

# copy all samefiles to a new folder 
for copysams in `ls *.sam`;do
cp $copysams ../2_SAMs;
done

# transform SAM files to BAM files
cd ..
cd 2_SAMs

for sams in `ls *.sam`;do
sams_cut=`basename $sams .sam` # cut off the .sam from the filename 
samtools13 view $sams_cut.sam -b > ../3_BAMs/$sams_cut.bam;
done


# transform BAM files to sortedBAM files
cd ..
cd 3_BAMs

for bams in `ls *.bam`;do
samtools13 sort $bams > ../4_Sorted_BAMs_plus_index/Sorted_$bams;
done


# make bam files index
cd ..
cd 4_Sorted_BAMs_plus_index

for bams in `ls *.bam`;do
samtools13 index $bams;
done


# make BigWig files

for bams in `ls *.bam`;do
bams_cut=`basename $bams .bam` # cut off the .bam from the filename 
bamCoverage -b $bams_cut.bam --normalizeUsing CPM -o ../5_BigWigs/$bams_cut.bw;
done

cd ..
cd ..;
done

