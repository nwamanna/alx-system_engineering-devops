#!/usr/bin/env ruby
word = ARGV[0]
pattern = /School/
word_match = word.scan(pattern)
if word_match
	puts word_match.join("")
end
