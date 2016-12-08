#!/usr/bin/bash
n=1; for f in ./*.jpg; do mv "$f" $n.jpg; n=$((n+1)); done
