require_relative '../bin/main.rb'

RSpec.descibe Game do
  p1 = Player.new(p1_name, 'X')
  p2 = Player.new(p2_name, 'O')

descibe "display_board" do
  it 'displays the board' do
    @field.each_index do |i|
      if (i % 3).zero?
        p @field[(i - 2)..i] unless i.zero?
      end
      expect(p1.PLayer.new(p1_name, 'X')).to eql(Object)
  end
end

end