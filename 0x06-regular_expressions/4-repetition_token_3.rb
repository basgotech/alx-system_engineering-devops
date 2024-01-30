#!/usr/bin/env ruby

# Check if the script has been given an argument
input_text = ARGV[0]

# Define the regular expression to match "hbn," "hbon," "hbtn," "hbttn," "hbtttn," "hbttttn"
regex = /\bhbn\b|\bhbon\b|\bhbtn\b|\bhbt{1,5}n\b/

# Scan the input text and join the matched results
result = input_text.scan(regex).join(' ')

# Print the result
puts result
