#!/bin/bash

read_and_sort() {
    # read file into array, sort array, echo string

    if [[ $1 = '' || ! $2 = '' ]]; then
        exit 1
    fi

    DAY_NUMBER=$1

    FILE_NAME="./resources/${DAY_NUMBER}data.txt"
    
    IFS=$'\n' SORTED=($(sort -n <<< readarray -t a < ${FILE_NAME} | tr -d '\r'))
    
    echo ${SORTED[*]}

}