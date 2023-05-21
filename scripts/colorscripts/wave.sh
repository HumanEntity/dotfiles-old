#/usr/bin/env bash

sequence=`seq 50 | sort --random-sort`

spark.sh $sequence | lolcat
