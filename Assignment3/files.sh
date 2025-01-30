  GNU nano 6.2                                                         check_files.c                                                                  # !/bin/bash

#!/bin/bash

# Check for .txt and .c files in the current directory
txt_files=$(ls *.txt 2>/dev/null)
c_files=$(ls *.c 2>/dev/null)

if [ -z "$txt_files" ] && [ -z "$c_files" ]; then
    echo "No .txt or .c files found. Creating dummy files..."
    touch dummy1.txt dummy2.txt dummy1.c dummy2.c
    echo "Dummy files created."
else
    echo "Existing .txt files:"
    ls *.txt 2>/dev/null
    echo "Existing .c files:"
    ls *.c 2>/dev/null
fi
