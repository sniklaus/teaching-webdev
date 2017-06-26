#!/bin/bash

source ./../setup.bash

strCategory="javascript"
strName="9-debug"
strFile="9-debug.txt"

wget -q -O /dev/stdout --auth-no-challenge --user="${strUser}" --password="${strPassword}" --post-file="${strFile}" "${strServer}/test?strCategory=${strCategory}&strAssignment=${strName}"