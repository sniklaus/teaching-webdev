#!/bin/bash

source ./../setup.bash

strCategory="node"
strName="2-url"
strFile="2-url.js"

wget -q -O /dev/stdout --auth-no-challenge --user="${strUser}" --password="${strPassword}" --post-file="${strFile}" "${strServer}/test?strCategory=${strCategory}&strAssignment=${strName}"