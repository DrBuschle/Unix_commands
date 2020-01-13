#!/bin/bash

# Extract all rows containing chr1 with column 4 larger value X and column 4 smaller Y

cat $file.extension | grep 'chr1' | awk '$4 > X' | awk '$4 < Y' > output.extension