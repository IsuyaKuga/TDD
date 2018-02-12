RSpec.describe Tdd::Dollar do
  describe '#times' do
    let(:dollar) { Tdd::Dollar.new(10) }
    it { expect(dollar.times(2)).to eq 10 }
  end
end
