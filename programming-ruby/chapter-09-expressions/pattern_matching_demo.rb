# frozen_string_literal: true

p 'Variable Binding'

[1, "potato", 2, "potato"] => [first, String, second, String]
puts "the numbers are #{first} and #{second}"

{rank: "Ace", suit: "Hearts"} => {rank:, suit:}
puts "Your card is the #{rank} of #{suit}."
