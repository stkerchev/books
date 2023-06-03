# frozen_string_literal: true

puts "\tChain statements"
a = b = c = 0
puts "a is #{a}"
puts "b is #{b}"
puts "c is #{c}"

puts "\tThe if and case statements both return the value"
d = if a == 0
      'initial value from chain statement'
    else
      'something else'
    end
puts d

puts "\tOperator expression"
# in Ruby, many binary operators are implemented as method calls.
puts "Add << method"
class ScoreKeeper
  def initialize
    @total_score = @count = 0
  end

  def <<(score)
    @total_score += score
    @count += 1
    self # return self -> allow method chaining - object_name << value_1 << value_2
  end

  def average
    fail "No scores" if @count.zero?
    Float(@total_score) / @count
  end
end

scores = ScoreKeeper.new
scores << 10 << 20 << 41
puts "Average = #{scores.average}"

puts "Add [] method"
class ClassWithSquareBrackets
  def[](p1, p2, p3)
    puts p1
    puts p2
    puts p3
  end
end

test_class = ClassWithSquareBrackets.new
test_class[3, 6, 9]