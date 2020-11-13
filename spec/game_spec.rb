require 'game'
describe Game do
  subject(:battle) { Game.new(dave, mittens) }
  let(:dave) { double :player }
  let(:mittens) { double :player }
  it 'pimp slap hurts' do
    expect(mittens).to receive(:oop_your_dying)
    subject.pimp_slap(mittens)
  end

  it 'accepts players as variables' do
    expect(subject.player_1).to eq dave
    expect(subject.player_2).to eq mittens
  end
end
