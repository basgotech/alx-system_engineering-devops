#!/usr/bin/env ruby

# Check if the script has been given an argument
input_text = ARGV[0]

# Define the regular expression to match the specified pattern
regex = /\Ah.n\z/

# Check if the input text matches the regular expression
if input_text.match?(regex)
  puts "#{input_text}$"
else
  puts "$"
end
