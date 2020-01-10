#!/bin/bash

# 1 file

gzip -k filename > filename.gz

# -k keeps the original file


# Several files

for i in `ls *.extension`;do
gzip -k $i >$i.gz;
done


# -k keeps the original files
