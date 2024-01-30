#!/usr/bin/env ruby

input_text = ARGV[0]

regex = /\bhtn\b|\bhbt{2,5}n\b/

result = input_text.scan(regex).join(' ')

puts result
