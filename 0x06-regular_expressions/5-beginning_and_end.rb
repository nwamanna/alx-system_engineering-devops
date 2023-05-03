#!/usr/bin/env ruby
word = ARGV[0]
pattern = /\bh[a-zA-Z0-9]*n\b/
word_match = word.scan(pattern)
if word_match
        puts word_match.join("")
end
