# frozen_string_literal: true

puts /cat/ =~ 'dog and cat' # => 8
puts /cat/ =~ 'catch' # => 0
result = /cat/ =~ 'Cat' # => nil
puts result.nil?

city_state_zip = %r{
(\w.*), # city name followed by a comma
\s # a space
([A-Z][A-Z]) # a two character state abbreviation
\s # a space
(\d{5}) # 5 digits for the US simple zip code
}x
puts "Chicago, IL 60601".match?(city_state_zip) # => true

def show_regexp(string, pattern)
  match = pattern.match(string)
  if match
    "#{match.pre_match}->#{match[0]}<-#{match.post_match}"
  else
    'no match'
  end
end

puts show_regexp('yes | no', /\|/) # => yes ->|<- no
puts show_regexp('yes (no)', /\(no\)/) # => yes ->(no)<-
show_regexp('are you sure?', /e\?/) # => are you sur->e?<-
