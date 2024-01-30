#!/usr/bin/env ruby

# This script extracts all consecutive sequences of uppercase letters
# from a provided string and joins them into a single string.

string_to_process = ARGV[0]

# Regular expression to match uppercase sequences
uppercase_sequences = string_to_process.scan(/[A-Z]*/)

# Combine the extracted sequences into a single string
extracted_uppercase = uppercase_sequences.join

# Print the extracted uppercase letters (or nothing if none found)
puts extracted_uppercase.empty? ? "" : extracted_uppercase

# Note: This script ignores lowercase letters and other characters.
