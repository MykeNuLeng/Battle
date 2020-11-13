require 'player'

describe Player do
  subject(:dave) { Player.new('Dave') }
  subject(:mittens) { Player.new('Mittens') }
  it 'returns its name' do
    expect(dave.name).to eq 'Dave'
  end

  it 'returns hp' do
    expect(subject.hp).to eq Player::DEFAULT_HP
  end

  it 'oop_your_dying reduces hp by 10' do
    expect { subject.oop_your_dying }.to change { subject.hp }.by -10
  end

end
