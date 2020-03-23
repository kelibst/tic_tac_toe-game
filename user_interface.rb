class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @turn_count = 0
    @field = ['',
              '--', '--', '--',
              '--', '--', '--',
              '--', '--', '--'] # We ignore index 0 for simplicity
  end

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
      puts 'Invalid number'
      get_move(player)
    end

    check_win(player, player_history_sorted)
  end

  def game_over
    print 'Play again? (Y/N): '
    input = gets.chomp.to_s.downcase

    if input == 'yes'
      Game.start
    elsif input == 'no'
      puts 'Thanks for trying!'
      exit
    else
      puts "select 'Yes or  'No'."
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

  def turn
    @turn_count += 1

    player = @turn_count.odd? ? @player1 : @player2

    get_move(player)
  end

  def self.start
    print "Lets start\n"
    print 'Player one: '
    p1_name = gets.chomp
    print 'Player two: '
    p2_name = gets.chomp

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
