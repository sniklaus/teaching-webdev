#!/bin/bash

source ./../setup.bash

strCategory="bootstrap"
strName="6-icons"
strFile="6-icons.html"

wget -q -O /dev/stdout --auth-no-challenge --user="${strUser}" --password="${strPassword}" --post-file="${strFile}" "${strServer}/test?strCategory=${strCategory}&strAssignment=${strName}"