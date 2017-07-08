#!/bin/bash

source ./../setup.bash

strCategory="mustache"
strName="3-logic"
strFile="3-logic.html"

wget -q -O /dev/stdout --auth-no-challenge --user="${strUser}" --password="${strPassword}" --post-file="${strFile}" "${strServer}/test?strCategory=${strCategory}&strAssignment=${strName}"