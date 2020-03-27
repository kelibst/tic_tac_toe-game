require_relative '../lib/game_logic.rb'
RSpec.describe Game do
  let(:player1) { 'Keli' }
  let(:player2) { 'Iryn' }

  let(:field) do
    ['',
     '1', '2', '3',
     '4', '5', '6',
     '7', '8', '9']
  end

  subject { Game.new(player1, player2) }

  describe '#display_board' do
    it 'display the game board' do
      expect(subject.display_board).to eq(field)
    end
  end
  describe '#check_win' do
    let(:player_history) { %w[4 5 6] }
    let(:player_history1) { [4, 5, 6] }
    let(:player1) { 'Keli' }
    WIN = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]].freeze
    it 'it checks and displays true if player history is in Win array' do
      expect(subject.check_win(player1, player_history)).to eq(true)
    end

    it 'checks the move and return false if player history does not lead to win.' do
      expect(subject.check_win(player1, player_history1)).to eq(false)
    end
  end
end
