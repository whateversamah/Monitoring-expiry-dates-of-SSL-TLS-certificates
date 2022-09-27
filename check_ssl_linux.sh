#!/bin/bash
data=`openssl x509 -noout -enddate -in $1| sed -e 's#notAfter=##'`
                ssldate=`date -d "${data}" '+%s'`
                nowdate=`date '+%s'`
                diff="$((${ssldate}-${nowdate}))"
               echo $((${diff}/86400))
