#!/bin/bash

# for loop

for variable in `ls *.ending`; do 	# iterate through files defined here
					# do defines the start of the loop
command $variable >> output_file.ending; # the repetitive command
done					# end of the loop



# e.g. count lines of all the files with your ending of choise

for count in `ls *.ending`; do 
wc -l $count >> unique_counts.txt; 
done	
