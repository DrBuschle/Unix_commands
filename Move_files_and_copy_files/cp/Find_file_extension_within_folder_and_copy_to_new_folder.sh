#!/bin/bash

# copy all the files with a certain extension to another folder


for copyfile in `ls *.sam`;do
cp $copyfile ../2_SAMs;
done