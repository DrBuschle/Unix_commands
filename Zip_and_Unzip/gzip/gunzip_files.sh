#!/bin/bash

# 1 file

gunzip -k filename.gz

# -k keeps the original file


# Several files

for i in `ls *.extension`;do
gunzip -k $i >$i.gz;
done


# -k keeps the original files



#####
# alternative #########
#####

# 1 file

gzip -dk filename.gz

# -k keeps the original file
# -d option for decompression


# Several files

for i in `ls *.extension`;do
gzip -dk $i >$i.gz;
done


# -k keeps the original files
# -d option for decompression

