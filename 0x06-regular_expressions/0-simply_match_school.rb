#!/usr/bin/env ruby

# Check if the script has been given an argument
if ARGV.empty?
  puts "Usage: #{$0} <text>"
  exit 1
end

# Get the input text from the command line argument
input_text = ARGV[0]

# Define the regular expression to match "School"
regex = /\bSchool\b/

# Check if the input text matches the regular expression
if input_text.match?(regex)
  puts "#{input_text}$"
else
  puts "$"
end
