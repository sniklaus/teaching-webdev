#!/bin/bash

source ./../setup.bash

strCategory="express"
strName="3-http"
strFile="3-http.js"

wget -q -O /dev/stdout --auth-no-challenge --user="${strUser}" --password="${strPassword}" --post-file="${strFile}" "${strServer}/test?strCategory=${strCategory}&strAssignment=${strName}"