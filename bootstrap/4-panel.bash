#!/bin/bash

source ./../setup.bash

strCategory="bootstrap"
strName="4-panel"
strFile="4-panel.html"

wget -q -O /dev/stdout --auth-no-challenge --user="${strUser}" --password="${strPassword}" --post-file="${strFile}" "${strServer}/test?strCategory=${strCategory}&strAssignment=${strName}"