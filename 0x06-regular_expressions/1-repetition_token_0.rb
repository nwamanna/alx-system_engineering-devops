#!/usr/bin/env ruby
word = ARGV[0]
pattern = /hbt{2,5}n/
word_match = word.match(pattern)
