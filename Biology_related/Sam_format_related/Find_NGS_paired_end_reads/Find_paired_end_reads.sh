#!/bin/bash

# Find paired end reads in a Sam file from a file with a list of the read names supposed to be found
# this list has to be build first by exchanding the ending of the paired end read

>Paired_Joined.sam # created a new file where the found reads are suppored to be stored
	
while read p;do		# reads in every line
	LC_ALL=C fgrep -m 1 $p Joined_Cap-C_1_0h_Raji_only.sam >> Paired_Joined.sam;		# finds the read and puts it to a new file
done <Paired_finder_Joined.txt		the input list the the read names to be found
