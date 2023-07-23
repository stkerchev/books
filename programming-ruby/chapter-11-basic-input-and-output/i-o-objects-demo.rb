# frozen_string_literal: true

dir_name = File.dirname(__FILE__)

# create a new file object using File.new:
f = File.new("#{dir_name}/t.txt", 'w')
f.close

file = File.open("#{dir_name}/test-file.input", "r")
# ... process the file
file.close

File.open("#{dir_name}/test-file.input", "r") do |input|
  puts input.class
  puts input.read(6)
end