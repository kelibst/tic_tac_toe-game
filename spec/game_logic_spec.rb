require_relative '../lib/game_logic.rb'
RSpec.describe Game do
  let(:player1) {"Keli"}
  let (:player2) {"Iryn"}
  

  let(:field) do
    ['',
     '1', '2', '3',
     '4', '5', '6',
     '7', '8', '9']
  end

  subject {Game.new(player1, player2)}

  describe '#display_board' do
    
    it 'display the game board' do
      expect(subject.display_board).to eq(field)
    end
  end

  # describe '#get_move' do
  #   let(:nfield) do
  #     ['',
  #      '1', '2', '3',
  #      '4', '5', '6',
  #      '7', '8', '9']
  #   end
  #   let(:nmove) { 1 }
  #   it 'displays valid move' do
  #     expect(nfield[nmove]).to eql('1')
  #   end
  #   let(:nnfield) do
  #     ['',
  #      '1', '2', '3',
  #      '4', '5', '6',
  #      '7', '8', '9']
  #   end
  #   let(:nnmove) { 10 }
  #   it 'displays invalide move' do
  #     expect(nnfield[nnmove]).not_to eql(nnmove)
  #   end
  # end

  # describe '#game_over' do
  #   let(:input) { 'n' }
  #   it 'shows end game and asks the winner to quit or continue ' do
  #     expect(input).to eql(input)
  #   end
  # end
  describe '#check_win' do
  
  let(:player_history) {[1, 2, 3]}
  let(:player1) {"Keli"}

    it 'it checks and displays true if player history is in Win array' do
      WIN = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]].freeze
      expect(subject.check_win(player1, player_history)).to eq(true)
    end
  end

  
end

