#!/usr/bin/env ruby
require_relative '../lib/game_logic.rb'

def start_game
  print "Lets start\n"
  p1_name = nil
  loop do
    print 'Player one: '
    p1_name = gets.chomp
    break unless p1_name.empty?

    puts 'Please Enter at least one character'
  end

  p2_name = nil
  loop do
    print 'Player two: '
    p2_name = gets.chomp
    break unless p2_name.empty?
  end

  p1 = Player.new(p1_name, 'X')
  p2 = Player.new(p2_name, 'O')
  game = Game.new(p1, p2)

  game.turn
end

WIN = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]].freeze
start_game
