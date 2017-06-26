#!/bin/bash

source ./../setup.bash

strCategory="css"
strName="3-pseudo"
strFile="3-pseudo.html"

wget -q -O /dev/stdout --auth-no-challenge --user="${strUser}" --password="${strPassword}" --post-file="${strFile}" "${strServer}/test?strCategory=${strCategory}&strAssignment=${strName}"