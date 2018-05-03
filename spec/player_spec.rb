require 'player'

describe Player do
  let(:larry) { described_class.new('Larry') }

  context 'adding player names as attributes' do

    it 'adds name' do
      expect(larry.name).to eq('Larry')
    end
  end
end
