#!/bin/bash

source ./../setup.bash

strCategory="mustache"
strName="2-table"
strFile="2-table.html"

wget -q -O /dev/stdout --auth-no-challenge --user="${strUser}" --password="${strPassword}" --post-file="${strFile}" "${strServer}/test?strCategory=${strCategory}&strAssignment=${strName}"