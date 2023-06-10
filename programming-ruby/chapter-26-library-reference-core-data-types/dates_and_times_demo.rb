# frozen_string_literal: true

require 'time'

# Ruby has three separate classes to represent date and time data: Time, Date, and DateTime
time = Time.new(in: '+03:00')
puts time # utc now +3 hours

puts Time.parse('2023-2-10') # valid date
begin
  resque_time = Time.parse('2023-22-10') # invalid date
  puts resque_time
rescue StandardError => e
  puts e.message # invalid date
end

# Converting Time
x = Time.now
case x
in {month: 3|4|5, day:} # pattern matching - match month 3, 4 or 5 and any day
  puts "Spring is here and it's the #{day}th"
else
  puts "Not in spring"
end