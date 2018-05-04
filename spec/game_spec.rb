require 'game'

describe Game do
  let(:muzzi) { double :player1, name: 'muzzi', sustain_damage: nil }
  let(:alastair) { double :player2, name: 'alastair', sustain_damage: nil }
  subject(:game) { described_class.new(muzzi, alastair) }

  describe '#player_one' do
    it 'saves player one as an attribute' do
      expect(game.player_one).to eq(muzzi)
    end
  end

  describe '#player_two' do
    it 'saves player two as an attribute' do
      expect(game.player_two).to eq(alastair)
    end
  end

  describe '#attack' do
    it 'calls sustain_damage on player' do
      game.attack
      expect(alastair).to have_received(:sustain_damage)
    end
  end

end
