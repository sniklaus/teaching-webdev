#!/bin/bash

source ./../setup.bash

strCategory="socket"
strName="2-draggable"
strFile="2-draggable.html"

wget -q -O /dev/stdout --auth-no-challenge --user="${strUser}" --password="${strPassword}" --post-file="${strFile}" "${strServer}/test?strCategory=${strCategory}&strAssignment=${strName}"