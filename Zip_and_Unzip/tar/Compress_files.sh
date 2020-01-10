#!/bin/bash

# compress

tar -zcvf your_file.tgz your/directory	# compresses your files in the given directory
tar -zcvf your_file.tgz another/directory	# compresses your files in several given directories

# alternative to -z
tar -cvf - your_file1 your_file2 your_file3 | gzip > your_archive.tar.gz
