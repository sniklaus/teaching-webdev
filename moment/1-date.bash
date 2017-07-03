#!/bin/bash

source ./../setup.bash

strCategory="moment"
strName="1-date"
strFile="1-date.html"

wget -q -O /dev/stdout --auth-no-challenge --user="${strUser}" --password="${strPassword}" --post-file="${strFile}" "${strServer}/test?strCategory=${strCategory}&strAssignment=${strName}"