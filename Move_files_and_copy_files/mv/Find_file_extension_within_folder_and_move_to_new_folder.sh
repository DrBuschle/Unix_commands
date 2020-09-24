#!/bin/bash

# copy all the files with a certain extension to another folder



# quick
mv `ls *_.tiff` move/here/


# as loop

for movefile in `ls *.sam`;do
mv $movefile ../2_SAMs;
done


