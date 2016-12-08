#!/usr/bin/bash
mkdir thumbs
for file in *.jpg
do
convert "$file" -thumbnail 200x200^ -gravity center -crop 200x200+0+0 +repage thumbs/"t$file"
done
