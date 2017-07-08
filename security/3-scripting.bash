#!/bin/bash

source ./../setup.bash

strCategory="security"
strName="3-scripting"
strFile="3-scripting.txt"

wget -q -O /dev/stdout --auth-no-challenge --user="${strUser}" --password="${strPassword}" --post-file="${strFile}" "${strServer}/test?strCategory=${strCategory}&strAssignment=${strName}"