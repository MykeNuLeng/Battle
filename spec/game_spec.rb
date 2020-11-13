require 'game'
describe Game do
  subject(:bob_sucks) { Game.new(bob, mittens) }
  subject(:battle) { Game.new(dave, mittens) }
  let(:bob) { double :player }
  let(:dave) { double :player }
  let(:mittens) { double :player }
  it 'pimp slap hurts' do
    expect(mittens).to receive(:oop_your_dying)
    subject.pimp_slap
  end

  it 'accepts players as variables' do
    expect(subject.player_1).to eq dave
    expect(subject.player_2).to eq mittens
  end

  it 'turn returns p1' do
    expect(subject.turn).to eq dave
  end

  it 'opponent returns p2' do
    expect(subject.opponent).to eq mittens
  end

  it 'you can legit lose this game' do
    allow(bob).to receive(:hp).and_return(0)
    allow(mittens).to receive(:hp).and_return(100)
    expect(bob_sucks.game_over?).to be true
  end
end
