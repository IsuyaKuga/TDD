RSpec.describe Tdd::Money do
  describe 'Test inequality' do
    it { expect(Tdd::Money.new(5,"USD") == Tdd::Money.new(5,"CHF")).to eq false }
  end

  describe 'Test equality' do
    it { expect(Tdd::Money.new(1,"USD") == Tdd::Money.new(1,"USD")).to eq true }
    it { expect(Tdd::Money.new(1,"CHF") == Tdd::Money.new(1,"CHF")).to eq true }
  end

  describe 'Test currency' do
    it { expect(Tdd::Money.new(1,"USD").currency() == "USD").to eq true }
    it { expect(Tdd::Money.new(1,"CHF").currency() == "CHF").to eq true }
  end

  describe '#times' do
    let(:five_dollar) { Tdd::Money.new(5,"USD") }
    let(:five_franc) { Tdd::Money.new(5,"CHF") }
    context 'when multiplied 2' do
      let(:product_dollar) { five_dollar.times(2) }
      let(:product_franc) { five_franc.times(2) }
      it { expect(product_dollar.amount).to eq 10 }
      it { expect(product_franc.amount).to eq 10 }
    end
    context 'when multiplied 3' do
      let(:product_dollar) { five_dollar.times(3) }
      let(:product_franc)  { five_franc.times(3) }
      it { expect(product_dollar.amount).to eq 15 }
      it { expect(product_franc.amount).to eq 15 }
    end
  end
end
