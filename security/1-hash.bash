#!/bin/bash

source ./../setup.bash

strCategory="security"
strName="1-hash"
strFile="1-hash.txt"

wget -q -O /dev/stdout --auth-no-challenge --user="${strUser}" --password="${strPassword}" --post-file="${strFile}" "${strServer}/test?strCategory=${strCategory}&strAssignment=${strName}"