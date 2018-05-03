require 'game'

describe Game do

  describe '#attack' do
    let(:ralph) { double :player, sustain_damage: nil  }

      context 'Player attacks opponent' do
      it 'calls sustain_damage on player' do
        subject.attack(ralph)
        expect(ralph).to have_received(:sustain_damage)
      end
    end
  end
end
