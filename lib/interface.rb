# frozen_string_literal: true

require_relative "string_permutation"

puts "*** PERMUTATE A STRING ***"

running = true

while running
  puts "Give me a string to permutate...please (press enter to exit)"
  player_answer = gets.chomp
  if player_answer.size >= 1
    puts '------------------'
    puts permutate_string('', player_answer)
  else
    puts 'Thanks for playing, see ya!'
    running = false
  end
end
