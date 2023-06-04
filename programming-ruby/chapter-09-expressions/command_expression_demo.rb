# frozen_string_literal: true

puts "\tCommand expression"
puts "Enclose a string in backquotes (sometimes called backticks) or use the delimited from %x{...}"
puts `date` # prints 4.06.2023 (нд) 13:19:04 EEST
puts %x{date} # prints 4.06.2023 (нд) 13:19:04 EEST

alias old_backquote `

def `(command)
  puts command
  result = old_backquote(command)
  unless Process.last_status.success?
    puts "*** Command #{command} failed: status = #{Process.last_status.exitstatus}"
  end
  result
end
print `ls -l /etc/passwd`
print `ls -l /etc/magic`
# prints -rw-r--r-- 1 root root 2935 юни  2 23:24 /etc/passwd
