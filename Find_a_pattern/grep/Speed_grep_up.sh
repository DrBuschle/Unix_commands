#!/bin/bash

LC_ALL=C fgrep -m 1 'pattern' file.txt # LC_ALL=C makes sure ASCII is used; fgrep tell it is a fixed pattern and no regular expression; -m 1 tells the program to stop the search after the first hit, which may be useful, but depends on the task you have to accomplish

# UTF8 has about 110,000 unique characters
# ASCII has 128 unique character