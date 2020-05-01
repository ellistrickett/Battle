require 'player'

describe Player do
  subject(:hibo) {Player.new("Hibo")}
  subject(:ellis) {Player.new("Ellis")}


  it 'returns its name' do
    expect(hibo.name).to eq "Hibo"
  end
  describe '#hp' do 
    it 'returns hit points' do
      expect(hibo.hp).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do 
    it 'changes hp by 10' do
    expect{hibo.attack(ellis)}.to change{ellis.hp}.by -10
  end
end

end
