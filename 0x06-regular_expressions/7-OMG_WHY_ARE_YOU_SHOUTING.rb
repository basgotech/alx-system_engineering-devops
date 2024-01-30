#!/usr/bin/env ruby

# Detect the argument as the string to test
string_to_test = ARGV[0]

# Define the regular expression pattern reg
regex_pattern = /^[A-Z]+$/

# Check if the string matches the pattern todo
if string_to_test.match?(regex_pattern)
  # Print the uppercase letters if it matches
  puts string_to_test.upcase
else
  # Print nothing if it doesn't equal or much
  puts ""
end
