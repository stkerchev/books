# frozen_string_literal: true

# A Ruby iterator is simply a method that can invoke a block of code.
def two_times(&block)
  block.call
  yield
end

two_times { puts 'execute block' }

puts "\nyield with arguments"

def fibonacci_generator(max)
  first = 1
  second = 1
  while first <= max
    yield first # return and keep the state
    first, second = second, first + second
  end
end

fibonacci_generator(1000) { |number| print number, ' ' }
puts

puts "\nreturn value from yield"

def filter_by_block(source)
  source.to_a.each do |value|
    return value if yield(value)
  end
end

filter_by_block([2, 4, 6, 8, 10]) { |item| puts item if item > 5 }

result = []
'cat'.each_char.each_with_index { |item, index| result << [item, index] }
puts result.to_s # => [["c", 0], ["a", 1], ["t", 2]]

puts "\nEnumerators Are Generators and Filters"
triangular_numbers = Enumerator.new do |variable_value|
  number = 0
  count = 1
  loop do
    number += count
    count += 1
    variable_value.yield number
  end
end
5.times { print triangular_numbers.next, ' ' }
puts
# Enumerator objects are also enumerable
triangular_numbers.first(5).each { |number| print number, ' ' }
puts

puts "\nUsing Blocks as Objects"
# Blocks are objects of the Proc class
class ProcExample
  def pass_in_block(&action)
    @stored_proc = action
  end

  def use_proc(parameter)
    @stored_proc.call(parameter)
  end
end

bo = ->(x) { puts "The parameter is #{x}" }
eg = ProcExample.new
eg.pass_in_block { bo }
eg.use_proc(99)

puts "\nInfinite select"

def infinite_select(triangular_numbers_e, &block)
  Enumerator.new do |yielder|
    triangular_numbers_e.each do |value|
      yielder.yield value if block.call(value)
    end
  end
end

p infinite_select(triangular_numbers) { |val| (val % 10).zero? }.first(5)

def Integer.all
  Enumerator.new do |yielder, n: 0|
    loop { yielder.yield(n += 1) }
  end.lazy
end

p Integer.all.first(10)

puts "\nreduce"
[1, 3, 5, 7].reduce(1) { |product, element| product * element } # with initial value
[1, 3, 5, 7].reduce { |product, element| product * element } # without initial value
rd_result = [1, 3, 5, 7].reduce(:*) # with symbol
puts rd_result
