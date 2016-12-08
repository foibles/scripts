#!/bin/bash -e
commit_message=$(date "+%a %Y-%m-%d %T")
git add -u
git commit -m "$commit_message"
git push
