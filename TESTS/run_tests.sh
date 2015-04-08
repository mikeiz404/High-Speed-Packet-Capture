#!/bin/sh
if [ $EUID -ne 0 ]
then
    echo "Error: Must be run with root permissions" >&2
    echo "Error: Some of the tests require root access in order to create a network tap." >&2
    exit 1
fi

python ./tests.py