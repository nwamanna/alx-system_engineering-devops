#!/usr/bin/env ruby
word = ARGV[0]
pattern = /\bh[a-zA-Z0-9]*n\b/
word_match = word.match(pattern)
