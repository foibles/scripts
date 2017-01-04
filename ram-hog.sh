#!/bin/bash
ps -A --sort -rss -o comm,pmem | head -n 11
