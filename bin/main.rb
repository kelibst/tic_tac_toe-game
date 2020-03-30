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
start_game
