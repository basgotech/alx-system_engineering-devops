#!/usr/bin/env ruby

puts (test_string && test_string.match?(/hb(t{1,5})n/)) ? "#{test_string}$" : "$"
