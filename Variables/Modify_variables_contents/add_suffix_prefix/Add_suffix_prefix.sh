#!/bin/bash

# add a suffix to a variable content

variable=Test
variable_suffixed=`echo ${variable}_your_suffix`



# add a prefix to a variable content

variable=Test
variable_prefixed=`echo This_is_a_${variable}`