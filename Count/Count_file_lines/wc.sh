#!/bin/bash

# count the lines of a file

wc -l filename.extension


# count the lines a files ending on a extension and writing them to a file

for k in `ls *.ending`; do		# iterate with a loop through all 
					# the files with a certain ending 
wc -l $k >> counts.txt;			# count lines and write them to a file
done					# end loop


# for copying

for k in `ls *.fa`; do 
wc -l $k >> counts.txt; 
done	