# frozen_string_literal: true

# online method definition
def print_something(args) = puts args

print_something('Hello World')

# online empty method
def empty_method; end

puts "\nMethod receiver"

class Target
end

# create a new instance of the class
first = Target.new
second = Target.new
arr = [first, second]

def first.custom_method = 'this is the custom method 1'

def second.custom_method = 'this is the custom method 2'

arr.each { |item| puts item.custom_method }

puts "\nMethod Parameters"
# method parameters with default values
def default_parameters(a = 1, b = 2, c = 3)
  puts "a = #{a}, b = #{b}, c = #{c}"
end

default_parameters
default_parameters(4)

# method with variable number of parameters
def variable_parameters(*args)
  puts args.class
  puts "args = #{args.inspect}"
end

variable_parameters(1, nil, 3, Set.new, 5)
variable_parameters # no arguments

# method with keyword parameters
def method_with_keywords(city:, state:, zip:)
  puts "city: #{city}, state: #{state}, zip: #{zip}"
end

method_with_keywords(state: "IL", zip: "60606", city: "Chicago")
method_with_keywords(city: "Chicago", zip: "60606", state: "IL")

# collect arbitrary keyword arguments into a Hash object
def method_with_keywords_and_hash(**args)
  puts "args = #{args.inspect}"
end

method_with_keywords_and_hash(state: "IL", zip: "60606")

puts "\nMethods and Block Parameters"

def double(p1)
  yield(p1 * 2)
end

double(3) { |val| puts "I got #{val}" } # => "I got 6"

def double_w(&bl)
  bl.call(3)
end

double_w { |val| puts "I got #{val}" } # => "I got 3"
