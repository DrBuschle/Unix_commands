#!/bin/bash

# split input by comma and print in column 1 and 2

awk -F","'{print $1, $2}' myfile > output 