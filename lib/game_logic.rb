require_relative '../lib/players.rb'
class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @win_array = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]].freeze
    @turn_count = 0
    @field = ['',
              '1', '2', '3',
              '4', '5', '6',
              '7', '8', '9'] # We ignore index 0 for simplicity
  end

  def display_board
    @field.each_index do |i|
      if (i % 3).zero?
        p @field[(i - 2)..i] unless i.zero?
      end
    end
  end

  def good_move?(_player, move)
    if @field[move] != 'X' && @field[move] != 'O' && (1..9).include?(move)
      true
    else
      false
    end
  end

  private

  def get_move(player)
    display_board

    print "(#{player.marker}) Enter choice number, #{player.name}: "
    move = gets.chomp.to_i
    player.moves_history << move
    player_history_sorted = player.moves_history.sort.join

    if good_move?(player, move)
      @field[move] = player.marker
    else
      p 'Invalid Move'
      get_move(player)
    end
    player_won(player, player_history_sorted)
  end

  def player_won(player, player_history_sorted)
    if check_win(player, player_history_sorted)

      display_board
      puts "Wow, #{player.name}! It's a win!"
      game_over
    elsif @turn_count >= 9
      display_board
      puts "It's a tie.Try again?"
      game_over

    end
    turn
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

  public

  def check_win(_player, player_history_sorted, won = false)
    @win_array.each do |r1|
      counter = 0

      r1.each do |r2|
        counter += 1 if player_history_sorted.include?(r2.to_s)

        next unless counter == 3

        won = true if counter == 3
      end
    end
    won
  end

  def turn
    @turn_count += 1

    player = @turn_count.odd? ? @player1 : @player2

    get_move(player)
  end
end
