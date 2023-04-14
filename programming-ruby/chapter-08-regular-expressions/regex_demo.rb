# frozen_string_literal: true

puts /cat/ =~ 'dog and cat' # => 8
puts /cat/ =~ 'catch' # => 0
result = /cat/ =~ 'Cat' # => nil
puts result.nil?
