#!/bin/bash

# sort single end read

samtools sort X.BAM sorted_X


# sort paired end read to have mate next to each other

samtools sort -n X.BAM sorted_X