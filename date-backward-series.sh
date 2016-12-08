#!/usr/bin/bash

# number of dates
num=2128

# start date
start="2016-09-28"

# generate
seq 1 $num | xargs -I {} date -d "$start -{} days" +%Y-%m-%d

