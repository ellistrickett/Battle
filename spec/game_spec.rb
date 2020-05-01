
describe Game do

  subject(:game) { described_class.new(player_1, player_2) }

  let(:player_1) { double(:player_1) }
  let(:player_2) { double(:player_2) }

  describe '#player_1' do
    it 'returns its name' do
      expect(player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'returns its name' do
      expect(player_2).to eq player_2
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

  describe '#switch_turn' do
    it 'changes turn from player 1 to player 2' do
      game.switch_turn
      expect(game.current_turn).to eq player_2
    end
  end

end
