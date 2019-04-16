#!/bin/bash

for copyfile in `ls *.sam`;do
cp $copyfile ../2_SAMs;
done