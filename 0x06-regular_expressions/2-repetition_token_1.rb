#!/usr/bin/env ruby

input_text = ARGV[0]

regex = /\bhtn\b|\bhbtn\b/

result = input_text.scan(regex).join(' ')

puts result
