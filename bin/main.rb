#!/usr/bin/env ruby
require_relative '../lib/game_logic.rb'

def display_board
  @field.each_index do |i|
    if (i % 3).zero?
      p @field[(i - 2)..i] unless i.zero?
    end
  end
  puts
end

def get_move(player)
  display_board

  print "(#{player.marker}) Enter choice number, #{player.name}: "
  move = gets.chomp.to_i
  player.moves_history << move
  player_history_sorted = player.moves_history.sort.join

  if @field[move] != 'X' && @field[move] != 'O' && (1..9).include?(move)
    @field[move] = player.marker
  else
    puts 'Invalid Move'
    get_move(player)
  end

  check_win(player, player_history_sorted)
end

def game_over
  print 'Play again? (Y/N): '
  input = gets.chomp.to_s.downcase

  if input == 'y'
    Game.start
  elsif input == 'n'
    puts 'Thanks for trying!'
    exit
  else
    puts "select 'Y or  'N'."
    game_over
  end
end

def check_win(player, player_history_sorted)
  WIN.each do |r1|
    counter = 0

    r1.each do |r2|
      counter += 1 if player_history_sorted.include?(r2.to_s)

      next unless counter == 3

      display_board
      puts "Wow, #{player.name}! It's a win!"
      game_over
    end
  end

  if @turn_count >= 9
    display_board
    puts "It's a tie.Try again?"
    game_over
  end

  turn
end
