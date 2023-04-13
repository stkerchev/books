# frozen_string_literal: true

# shortcut syntax for creating a hash
user_type = {
  admin: 'Administrator',
  user: 'User',
  guest: 'Guest'
}

var = :admin
puts user_type[:admin]
puts var.class

puts 'creating a new hash by variable names'
firstname = "Fred"
lastname = "Flintstone"
user = { firstname:, lastname: }
puts user

# Count words in a string
def words_from_string(string)
  string.downcase.scan(/[\w']+/)
end

raw_text = "The problem breaks down into two parts. First, given some text
as a string, return a list of words. That sounds like an array. Then, build
a count for each distinct word. That sounds like a use for a hash---we can
index it with the word and use the corresponding entry to keep a count."

puts words_from_string(raw_text)
       .tally # Returns a hash containing the counts of equal elements:
       .sort_by { |_, count| count }
       .last(5)
       .tap { |words| puts words } # for the debug
       .reverse
       .map { |word, count| "#{word}: #{count}" }

puts words_from_string(raw_text).tally # raw tally output
