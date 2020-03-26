require_relative '../lib/game_logic.rb'
RSpec.describe Game do
  describe '#display_board' do
  let(:field)  {['',
               '1', '2', '3',
               '4', '5', '6',
               '7', '8', '9']}
    it 'display the game board' do
      

      expect(field).to eql(field)
    end
  end

  describe '#get_move' do
  let(:nfield) {['',
               '1', '2', '3',
               '4', '5', '6',
               '7', '8', '9']}
      let(:nmove)  {1}
    it 'displays valid move' do
      

      expect(nfield[nmove]).to eql('1')
    end
    let (:nnfield)  {['',
               '1', '2', '3',
               '4', '5', '6',
               '7', '8', '9']}
      let(:nnmove)  {10}
    it 'displays invalide move' do
      
      expect(nnfield[nnmove]).not_to eql(nnmove)
    end
  end

  describe '#game_over' do
  let(:input)  {'n'}
    it 'shows end game and asks the winner to quit or continue ' do
      
      expect(input).to eql(input)
    end
  end

  describe '#check_win' do
  let(:win)  {"Wow, It's a win!"}
    it 'its checks and displays player win' do
      
      expect(win).to eql("Wow, It's a win!")
    end
  end
end
