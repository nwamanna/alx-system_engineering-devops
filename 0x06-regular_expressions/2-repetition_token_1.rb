#!/usr/bin/env ruby
word = ARGV[0]
pattern = /hb{0,1}tn/
word_match = word.match(pattern)
if word_match
        puts word_match.join("")
end
