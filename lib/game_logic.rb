require_relative '../lib/game_logic.rb'
require_relative '../lib/players.rb'
class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @turn_count = 0
    @field = ['',
              '1', '2', '3',
              '4', '5', '6',
              '7', '8', '9'] # We ignore index 0 for simplicity
  end

  def turn
    @turn_count += 1

    player = @turn_count.odd? ? @player1 : @player2

    get_move(player)
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

WIN = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]].freeze



 
