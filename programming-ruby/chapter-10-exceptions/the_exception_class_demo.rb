# frozen_string_literal: true

# The StandardError exception and its subclasses represent the exceptional conditions that you are going to want
# to capture in your code.
# Other subclasses of Exception are raised by Ruby internals or system-level problems.
class DemoError < StandardError; end

class ForbiddenIntError < DemoError; end

def protect(input_value)
  if input_value == 0
    raise DemoError
  end
  if input_value.even?
    raise ForbiddenIntError
  end
end

def execute_demo
  to_test = rand(0..2)
  puts "\nthe number is #{to_test} =>"
  begin
    protect to_test
  rescue ForbiddenIntError => e
    puts e.class
  rescue DemoError => e
    puts e.class
  end
end

10.times do
  execute_demo
end