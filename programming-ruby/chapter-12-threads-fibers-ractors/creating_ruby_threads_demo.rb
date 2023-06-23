# frozen_string_literal: true

internal = Thread.new do
  puts "New thread object_id #{Thread.current.object_id}"
  Thread.current[:counter] = 0
  5.times do |i|
    Thread.current[:counter] = i
    sleep 1
  end
end

puts "Main thread object_id: #{Thread.current.object_id}"
while internal[:counter].to_i < 4 do
  sleep 0.66
  puts "Counter is #{internal[:counter]}"
end


require "net/http"
pages = %w[www.rubycentral.org www.pragprog.com www.google.com]
threads = pages.map do |page_to_fetch|
  Thread.new(page_to_fetch) do |url|
    http = Net::HTTP.new(url, 80)
    print "New thread object_id #{Thread.current.object_id} -> Fetching: #{url}\n"
    response = http.get("/")
    print "Got #{url}: #{response.message}\n"
  end
end
threads.each { |thread| thread.join }
print "We're done here!\n"