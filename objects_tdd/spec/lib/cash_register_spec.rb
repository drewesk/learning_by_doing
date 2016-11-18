require 'rspec'
require './lib/register'

describe CashRegister do
  let(:cashregister) { CashRegister.new }

  it 'has been created' do
    expect(cashregister).to be_a(CashRegister)
  end

  describe '#total' do
    it 'returns 0.0 by default' do
      expect(cashregister.total).to eq(0.0)
    end
  end

  describe '#purchase(amount)' do
    it 'adds the amount to the total' do
      expect(cashregister.total).to eq(0.0)
      cashregister.purchase(3.0)
      expect(cashregister.total).to eq(3.0)
    end
  end

  describe '#pay(amount_tendered)' do
    before(:each) do
      cashregister.purchase(3.0)
    end

    context 'when the payment amount is < total' do
      it 'subtracts the amount' do
        cashregister.pay(1.5)
        expect(cashregister.total).to eq(1.5)
      end
      it 'prints the new total' do
        expect { puts("Your you owe #{@total}") }.to_stdout
      end
    end

    context 'when the payment amount is > total' do
      it 'resets the total amount to 0.0' do
        cashregister.pay(6.0)
        expect(cashregister.total).to eq(0.0)
      end
      it 'prints the change' do
        expect { puts('Your change is #{-@total}') }.to_stdout
      end
    end
  end
end
