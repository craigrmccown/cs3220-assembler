#!/bin/bash

function usage {
    echo "ERROR: $1"
    echo "usage: run.sh <sourcefile> <destinationfile>"
    exit 1
}

[ $# -eq 2 ] || usage 'must supply source and destination files'
[ -f $1 ] || usage 'source file does not exist'

CODE=$(python ../cs3220-assembler/assembler.py $1)

if [ $? -eq 0 ]; then
    echo "$CODE" > $2
fi
