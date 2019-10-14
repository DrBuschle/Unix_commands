#!/bin/bash

# rename the filenames with a certain pattern

for name in *.ending;do
mv "$name" "${name/NAME/RENAME}";
done