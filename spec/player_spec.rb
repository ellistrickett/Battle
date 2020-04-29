require 'player'

describe Player do
  it 'returns its name' do
    player = Player.new("Hibo")
    expect(player.name).to eq "Hibo"
  end
end
