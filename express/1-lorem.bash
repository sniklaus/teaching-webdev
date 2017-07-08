#!/bin/bash

source ./../setup.bash

strCategory="express"
strName="1-lorem"
strFile="1-lorem.js"

wget -q -O /dev/stdout --auth-no-challenge --user="${strUser}" --password="${strPassword}" --post-file="${strFile}" "${strServer}/test?strCategory=${strCategory}&strAssignment=${strName}"