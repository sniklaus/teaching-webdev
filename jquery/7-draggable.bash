#!/bin/bash

source ./../setup.bash

strCategory="jquery"
strName="7-draggable"
strFile="7-draggable.html"

wget -q -O /dev/stdout --auth-no-challenge --user="${strUser}" --password="${strPassword}" --post-file="${strFile}" "${strServer}/test?strCategory=${strCategory}&strAssignment=${strName}"