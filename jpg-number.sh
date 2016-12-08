#!/usr/bin/bash

perl-rename 'next unless -e; ++$i; s/.*\.(.*)$/$i.\L$1/; s/jpeg$/jpg/' *.jpg  
