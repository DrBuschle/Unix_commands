#!/bin/bash

# count the lines of a file

wc -l


# count the lines a files ending on a extension and writing them to a file

for k in `ls *.ending`; 		# iterate with a loop through all 
					# the files with a certain ending 
do wc -l $k >> counts.txt;		# count lines and write them to a file
done					# end loop

