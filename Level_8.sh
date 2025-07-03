#Mission: Create a script that searches for a specific word or phrase across all .log files in a directory 
#and outputs the names of the files that contain the word or phrase.

#!/bin/bash

# Check if a search term was provided
if [ -z "$1" ]; then
  echo "Usage: $0 <search_word_or_phrase>"
  exit 1
fi

search_term="$1"

# Search all .log files for the term and print only the filenames with matches
grep -l -- "$search_term" *.log 2>/dev/null