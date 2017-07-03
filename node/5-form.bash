#!/bin/bash

source ./../setup.bash

strCategory="node"
strName="5-form"
strFile="5-form.js"

wget -q -O /dev/stdout --auth-no-challenge --user="${strUser}" --password="${strPassword}" --post-file="${strFile}" "${strServer}/test?strCategory=${strCategory}&strAssignment=${strName}"