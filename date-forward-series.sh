#!/usr/bin/bash

# number of dates
num=2128
start="2010-12-01"
# generate
seq 1 $num | xargs -I {} date -d "$start {} days" +%Y-%m-%d
