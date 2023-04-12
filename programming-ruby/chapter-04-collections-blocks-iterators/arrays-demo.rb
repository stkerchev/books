# frozen_string_literal: true

puts 'Creating Arrays'

a1 = ['test', 1, nil]
puts a1[2].class

puts 'from %i'
a2 = %i[test 1 nil]
a2.each { |value| puts value.class }

puts 'from %w'
a3 = %w[test 1 nil]
a3.each { |value| puts value.class }

puts Array.new(3, 'test').inspect

puts "\n\tAccessing Elements"
array_indexes = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts array_indexes.inspect
puts "array_indexes[0]      #=> #{array_indexes[0]}"
puts "array_indexes[100]    #=> #{array_indexes[100].class}"
puts "array_indexes[-2]     #=> #{array_indexes[-2]}"
puts "array_indexes[-20]    #=> #{array_indexes[-20].class}"
puts "array_indexes[2, 2]   #=> #{array_indexes[2, 2].inspect}"
puts "array_indexes[2..3]   #=> #{array_indexes[2..3].inspect}"
puts "array_indexes[2...3]  #=> #{array_indexes[2...3].inspect}"
puts "array_indexes.at(0)   #=> #{array_indexes.at(0)}"
puts "array_indexes.first   #=> #{array_indexes.first}"
puts "array_indexes.last    #=> #{array_indexes.last}"
puts "array_indexes.fetch(4, 'default')     #=> #{array_indexes.fetch(4, 'default')}"
puts "array_indexes.fetch(11, 'default')    #=> #{array_indexes.fetch(11, 'default')}"
puts "array_indexes.take(5).inspect         #=> #{array_indexes.take(5).inspect}"
puts "array_indexes.drop(5).inspect         #=> #{array_indexes.drop(5).inspect}"

puts "\n\tObtaining Information about an Array"

puts "\n\tAdding Items to Arrays"

puts "\n\tRemoving Items from an Array"

puts "\n\tIterating over Arrays"

puts "\n\tSelecting Items from an Array"
