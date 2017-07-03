#!/bin/bash

source ./../setup.bash

strCategory="bootstrap"
strName="3-form"
strFile="3-form.html"

wget -q -O /dev/stdout --auth-no-challenge --user="${strUser}" --password="${strPassword}" --post-file="${strFile}" "${strServer}/test?strCategory=${strCategory}&strAssignment=${strName}"