#!/bin/bash

source ./../setup.bash

strCategory="moment"
strName="4-print"
strFile="4-print.html"

wget -q -O /dev/stdout --auth-no-challenge --user="${strUser}" --password="${strPassword}" --post-file="${strFile}" "${strServer}/test?strCategory=${strCategory}&strAssignment=${strName}"