#!/bin/bash
if [ $EUID -ne 0 ]
then
    echo ""
    echo "Please run wuth sudo"
    echo ""
    exit
fi
