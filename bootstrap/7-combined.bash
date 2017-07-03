#!/bin/bash

source ./../setup.bash

strCategory="bootstrap"
strName="7-combined"
strFile="7-combined.html"

wget -q -O /dev/stdout --auth-no-challenge --user="${strUser}" --password="${strPassword}" --post-file="${strFile}" "${strServer}/test?strCategory=${strCategory}&strAssignment=${strName}"