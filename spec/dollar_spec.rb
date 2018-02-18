RSpec.describe Tdd::Dollar do
  describe '#times' do
    let(:five) { Tdd::Dollar.new(5) }
    context 'when multiplied 2' do
      let(:product) { five.times(2) }
      it { expect(product.amount).to eq 10 }
    end
    context 'when multiplied 3' do
      let(:product) { five.times(3) }
      it { expect(product.amount).to eq 15 }
    end
  end

  describe 'Test equality' do
    let(:five) { Tdd::Dollar.new(5) }
    context 'true' do
      it { expect(five==(Tdd::Dollar.new(5))).to eq true }
    end
    context 'false' do
      it { expect(five==(Tdd::Dollar.new(6))).to eq false }
    end
  end
end
