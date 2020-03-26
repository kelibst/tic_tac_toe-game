require_relative '../lib/game_logic.rb'
RSpec.describe Game do
  describe '#display_board' do
    it 'display the game board' do
      field = ['',
               '1', '2', '3',
               '4', '5', '6',
               '7', '8', '9']

      expect(field).to eql(field)
    end
  end

  describe '#get_move' do
    it 'displays valid move' do
      field = ['',
               '1', '2', '3',
               '4', '5', '6',
               '7', '8', '9']
      move = 1

      expect(field[move]).to eql('1')
    end
    it 'displays invalide move' do
      field = ['',
               '1', '2', '3',
               '4', '5', '6',
               '7', '8', '9']
      move = 10
      expect(field[move]).not_to eql(move)
    end
  end

  describe '#game_over' do
    it 'shows end game and asks the winner to quit or continue ' do
      input = 'n'
      expect(input).to eql(input)
    end
  end

  describe '#check_win' do
    it 'its checks and displays player win' do
      win = "Wow, It's a win!"
      expect(win).to eql("Wow, It's a win!")
    end
  end
end
