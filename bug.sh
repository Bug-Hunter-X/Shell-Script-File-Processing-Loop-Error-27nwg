#!/bin/bash

# This script attempts to process a list of files but has a subtle error.
# It uses a loop to iterate over the files, but the loop condition is incorrect.
files=("/tmp/file1.txt" "/tmp/file2.txt" "/tmp/file3.txt")

for i in "${files[@]}"; do
  if [[ -f "$i" ]]; then
    echo "Processing: $i"
    # process file $i
  else
    echo "Error: File not found: $i"
  fi
done