#!/usr/bin/env ruby

puts "Player1 starts!\n Make a move with number from 1 to 9"

player1_input = gets.chomp

nums = "1"..."9"
nums.include?(player1_input)

puts "Pleae enter a valid nummber between 0 to 9" unless nums.include?(player1_input)
puts "Here is the dastboard.
----
----
----
"
puts "Awesome! now it is player2 's turn."

player2_input = gets.chomp

nums.include?(player2_input)

puts "Here is the dastboard.
----
----
----
"

puts "player 2 won!!!"
