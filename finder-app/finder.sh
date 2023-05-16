#!/bin/bash

# Check if both arguments were specified
if [ $# -ne 2 ]; then
  echo "Usage: $0 <Dir> <str>"
  exit 1
fi

# Get the arguments
Dir="$1"
str="$2"

# Check if Dir is a directory
if [ ! -d "$Dir" ]; then
  echo "$Dir is not a directory"
  exit 1
fi

# Count the number of files and matching lines
total_files=$(find "$Dir" -type f | wc -l)
total_lines=$(grep -r "$str" "$Dir" | wc -l)

# Print the results
echo "The number of files are $total_files and the number of matching lines are $total_lines"
