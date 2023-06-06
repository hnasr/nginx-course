#!/bin/bash

# Navigate to your git repository directory if needed
# cd /path/to/your/git/repo
cd /Users/HusseinNasser/projects/courses/nginx-course
git pull


# Ensure that the script receives exactly one parameter.
if [ "$#" -ne 1 ]; then
    echo "This script requires exactly one parameter."
    exit 1
fi

# The coupon parameter.
coupon=$1

# Ensure index.bak file exists in the same directory.
if [ ! -f index.bak ]; then
    echo "index.bak file does not exist in the current directory."
    exit 1
fi

# Use sed command to replace "XXXX" with the coupon parameter, then write output to index.html.
sed "s/XXXX/$coupon/g" index.bak > index.html



git add .
git commit -m "new"
git push
