require 'game'

describe Game do
  let(:muzzi) { double :player1, name: 'muzzi' }
  let(:alastair) { double :player2 }
  subject(:game) { described_class.new(muzzi, alastair) }

  describe 'Creates player names' do
    context 'adds player one name' do
      it 'saves player one as an attribute' do
        expect(game.player_one).to eq(muzzi)
      end
    end

    context 'adds player two name' do
      it 'saves player two as an attribute' do
        expect(game.player_two).to eq(alastair)
      end
    end
end

# describe '#display_name' do
#   it 'shows player ones name' do
#     expect(game.display_name)

  describe '#attack' do
    let(:ralph) { double :player, sustain_damage: nil  }
      context 'Player attacks opponent' do
      it 'calls sustain_damage on player' do
        game.attack(ralph)
        expect(ralph).to have_received(:sustain_damage)
      end
    end
  end
end
