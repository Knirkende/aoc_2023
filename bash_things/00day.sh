#!/bin/bash

# puzzle template and basic functionality test file

source ./util.sh

CRLF_ARR=$(read_and_sort 101)
LF_ARR=$(read_and_sort 102)
STUPID_COMMAND=$(read_and_sort 102 1)

if [[ $CRLF_ARR = $LF_ARR && $LF_ARR = "1 2 3 4" && $? -eq 1 ]]; then
    echo "Yay."
else
    echo "Christmas was cancelled due to test failures. Your present is a non-zero exit code."
    exit 1
fi