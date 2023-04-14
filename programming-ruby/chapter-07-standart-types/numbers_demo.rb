# frozen_string_literal: true

puts 'Complex numbers'
com = '1'.to_c
puts com.class
puts com.inspect

puts "\nLooping using numbers"
3.times { print 'X ' }
1.upto(5) { |i| print i, ' ' }
99.downto(95) { |i| print i, ' ' }
50.step(80, 5) { |i| print i, ' ' }
# X X X 1 2 3 4 5 99 98 97 96 95 50 55 60 65 70 75 80

10.downto(7).with_index { |num, index| puts "#{index}: #{num}" }
