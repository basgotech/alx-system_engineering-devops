#!/usr/bin/env ruby

# This script extracts specific information from a string using a regular expression.
# It targets strings formatted like "[from:...] [to:...] [flags:...]" and extracts
# the values within the square brackets, separated by commas.

# Access the string to process from the command-line argument
string_to_process = ARGV[0]

# Define the regular expression pattern to match the desired format
pattern = /\[from:(.*?)\] \[to:(.*?)\] \[flags:(.*?)\]/

# Extract the information using the pattern
matches = string_to_process.scan(pattern)

# Join the extracted information, formatting as a comma-separated list
extracted_data = matches.map { |match| match.join(",") }.join(",")

# Print the extracted data to the console
puts extracted_data
