#!/bin/bash

# get the md5 hashes for your desired file(s) in a txt file output 

md5 filename >> MD5_hashes.txt;

# in a loop for several files with the same endingi

for name in `ls *.file_extension`; do 
md5 $name >> MD5_hashes.txt;
done

# go to the main folder to create the Md5_hash_file here, while iterating through subfolders only (not through files) and create Md5_hash of a certain file type only

for name in `ls -d pattern*/`; do
cd $name
md5 *.file_extension >> ../MD5_hashes.txt
cd ..;
done




