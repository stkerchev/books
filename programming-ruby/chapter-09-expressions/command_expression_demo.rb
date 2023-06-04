# frozen_string_literal: true

puts "\tEnclose a string in backquotes (sometimes called backticks) or use the delimited from %x{...}"
puts `date` # prints 4.06.2023 (нд) 13:19:04 EEST
puts %x{date} # prints 4.06.2023 (нд) 13:19:04 EEST