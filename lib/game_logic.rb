require_relative '../bin/main.rb'
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

WIN = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]].freeze
start_game
