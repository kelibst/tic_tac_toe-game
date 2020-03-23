require_relative '../bin/main.rb'
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

  def self.start
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
    @game = Game.new(p1, p2)

    @game.turn
  end
end

class Player
  attr_accessor :name, :moves_history
  attr_reader :marker

  def initialize(name, marker)
    @name = name
    @marker = marker
    @moves_history = []
  end
end

WIN = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]].freeze
Game.start
