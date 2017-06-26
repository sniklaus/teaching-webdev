#!/bin/bash

source ./../setup.bash

strCategory="javascript"
strName="6-table"
strFile="6-table.html"

wget -q -O /dev/stdout --auth-no-challenge --user="${strUser}" --password="${strPassword}" --post-file="${strFile}" "${strServer}/test?strCategory=${strCategory}&strAssignment=${strName}"