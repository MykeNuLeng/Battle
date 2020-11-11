require 'player'

describe Player do
  subject(:dave) { Player.new('Dave') }
  it 'returns its name' do
    expect(subject.name).to eq 'Dave'
  end
end
