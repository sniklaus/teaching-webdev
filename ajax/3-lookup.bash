#!/bin/bash

source ./../setup.bash

strCategory="ajax"
strName="3-lookup"
strFile="3-lookup.html"

wget -q -O /dev/stdout --auth-no-challenge --user="${strUser}" --password="${strPassword}" --post-file="${strFile}" "${strServer}/test?strCategory=${strCategory}&strAssignment=${strName}"