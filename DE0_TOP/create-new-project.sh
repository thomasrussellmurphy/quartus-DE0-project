#!/bin/bash
mkdir  ../"$1"
mkdir ../"$1"/V

cp assignment_defaults.qdf ../"$1"/
cp DE0_TOP.sdc ../"$1"/"$1".sdc
./new-project-file-modification.py "$1"
