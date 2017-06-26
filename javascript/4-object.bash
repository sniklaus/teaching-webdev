#!/bin/bash

source ./../setup.bash

strCategory="javascript"
strName="4-object"
strFile="4-object.html"

wget -q -O /dev/stdout --auth-no-challenge --user="${strUser}" --password="${strPassword}" --post-file="${strFile}" "${strServer}/test?strCategory=${strCategory}&strAssignment=${strName}"