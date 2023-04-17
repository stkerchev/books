# frozen_string_literal: true

puts "\tVariable Binding"

[1, "potato", 2, "potato"] => [first, String, second, String]
puts "the numbers are #{first} and #{second}"

{ rank: "Ace", suit: "Hearts" } => { rank:, suit: }
puts "Your card is the #{rank} of #{suit}."

puts "\n\tCase Pattern Matching"
input_str = {"employee": {"name":"Elmo","salary":56000,"married":true}}

case input_str
in { employee: { name:, salary:, married: } }
  puts "#{name} earns #{salary} and is #{married ? "married" : "not married"}"
else
  puts "Unknown"
end


