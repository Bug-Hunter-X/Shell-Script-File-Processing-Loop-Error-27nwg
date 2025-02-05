#!/bin/bash

# This script is the corrected version of the file processing script.
# It uses a loop to iterate over the files using array indexing correctly.
files=("/tmp/file1.txt" "/tmp/file2.txt" "/tmp/file3.txt")

for i in "${!files[@]}"; do
  file="${files[i]}"
  if [[ -f "$file" ]]; then
    echo "Processing: $file"
    # process file $file
  else
    echo "Error: File not found: $file"
  fi
done