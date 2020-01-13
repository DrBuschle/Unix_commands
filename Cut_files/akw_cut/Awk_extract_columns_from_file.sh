#!/bin/bash

awk '{print $1, $3, $4}' myfile > output 	# cut columns 1, 3, and 4 from a file
