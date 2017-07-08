#!/bin/bash

source ./../setup.bash

strCategory="ajax"
strName="1-lorem"
strFile="1-lorem.html"

wget -q -O /dev/stdout --auth-no-challenge --user="${strUser}" --password="${strPassword}" --post-file="${strFile}" "${strServer}/test?strCategory=${strCategory}&strAssignment=${strName}"