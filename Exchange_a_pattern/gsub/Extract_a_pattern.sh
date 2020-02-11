#!/bin/bash

# rename the filenames with a certain pattern


# PATTERN needs to exist within all files, e.g. .txt
# PATTERN gets exchanged by NEW_PATTERN, e.g. .txt by .csv


for name in *.ending;do
mv "$name" "${name/PATTERN/NEW_PATTERN}";	
done



