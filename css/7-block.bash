#!/bin/bash

source ./../setup.bash

strCategory="css"
strName="7-block"
strFile="7-block.html"

wget -q -O /dev/stdout --auth-no-challenge --user="${strUser}" --password="${strPassword}" --post-file="${strFile}" "${strServer}/test?strCategory=${strCategory}&strAssignment=${strName}"