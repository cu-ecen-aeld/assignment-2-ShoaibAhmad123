#!/bin/bash

# Check if both arguments are provided
if [ $# -ne 2 ]; then
  echo "Usage: $0 <Dir> <str>"
  exit 1
fi

# Assign variables to the provided arguments
Dir="$1"
str="$2"

# Create the directory path if it doesn't exist
mkdir -p "$(dirname "$Dir")"

# Write the string to the file, overwriting any existing file
echo "$str" > "$Dir"

# Check if the file was created successfully
if [ $? -ne 0 ]; then
  echo "Error: File could not be created."
  exit 1
fi

exit 0
