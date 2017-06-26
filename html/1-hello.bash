#!/bin/bash

source ./../setup.bash

strCategory="html"
strName="1-hello"
strFile="1-hello.txt"

wget -q -O /dev/stdout --auth-no-challenge --user="${strUser}" --password="${strPassword}" --post-file="${strFile}" "${strServer}/test?strCategory=${strCategory}&strAssignment=${strName}"