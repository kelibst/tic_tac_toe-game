#!/usr/bin/env ruby
require_relative '../lib/game_logic.rb'
require_relative '../lib/players.rb'

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
    start_game
  elsif input == 'n'
    puts 'Thanks for trying!'
    exit
  else
    puts "select 'Y or  'N'."
    game_over
  end
end

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

  res = [p1_name, p2_name]
end

res =  start_game
p1 = Player.new(res[0], 'X')
  p2 = Player.new(res[1], 'O')
  games = Game.new(p1, p2)

  games.turn
  p1 = Player.new(p1_name, 'X')
  p2 = Player.new(p2_name, 'O')
  game = Game.new(p1, p2)

  game.turn
end

WIN = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]].freeze
start_game
