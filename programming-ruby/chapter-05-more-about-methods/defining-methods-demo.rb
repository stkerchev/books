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

arr.each{ |item| puts item.custom_method }

puts "\nMethod Parameters"

