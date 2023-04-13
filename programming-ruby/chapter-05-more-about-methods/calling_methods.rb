# frozen_string_literal: true

# call the method as the left side of an assignment statement
class TestPerson
  def type=(new_name)
    @type = new_name
  end

  def print
    puts @type
  end
end

p = TestPerson.new
p.type = 'power user'
p.print
p.type = ('regular user')
p.print

puts "\nMethod Return Values"

def method_one
  "one"
end

method_one # => "one"

def method_two(arg)
  case
  when arg > 0 then 'positive'
  when arg < 0 then 'negative'
  else 'zero'
  end
end

method_two(23) # => "positive"
method_two(0) # => "zero"

def five(a, b, c, d, e)
  "I was passed #{a} #{b} #{c} #{d} #{e}"
end

p five(1, 2, 3, 4, 5) # => "I was passed 1 2 3 4 5"
p five(1, 2, 3, *['a', 'b']) # => "I was passed 1 2 3 a b"
p five(*['a', 'b'], 1, 2, 3) # => "I was passed a b 1 2 3"
p five(*(10..14)) # => "I was passed 10 11 12 13 14"
p five(*[1, 2], 3, *(4..5)) # => "I was passed 1 2 3 4 5"
