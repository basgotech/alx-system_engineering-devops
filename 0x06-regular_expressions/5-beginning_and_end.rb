#!/usr/bin/env ruby

# Capture the argument as the string to test
string_to_test = ARGV[0]

# Define the regular expression pattern
regex_pattern = /^h.n$/

# Check if the string matches the pattern
if string_to_test.match?(regex_pattern)
  # Print the string if it matches
  puts string_to_test
else
  # Print nothing if it doesn't match
  puts ""
end
