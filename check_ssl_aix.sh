#!/bin/bash
openssl x509 -noout -enddate -in $1 | sed -e 's#notAfter=##' | awk '{ printf "%04d-%02d-%02d\n", $4, (index("JanFebMarAprMayJunJulAugSepOctNovDec",$1)+2)/3, $2}'