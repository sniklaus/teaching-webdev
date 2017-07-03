#!/bin/bash

source ./../setup.bash

strCategory="jquery"
strName="4-listener"
strFile="4-listener.html"

wget -q -O /dev/stdout --auth-no-challenge --user="${strUser}" --password="${strPassword}" --post-file="${strFile}" "${strServer}/test?strCategory=${strCategory}&strAssignment=${strName}"