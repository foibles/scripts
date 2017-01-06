awk 'f[$0]++ == 0' cull-10.csv > tmp.$$ && cp tmp.$$ cull-10.csv;rm tmp.$$

