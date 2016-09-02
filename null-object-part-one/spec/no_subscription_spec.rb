require 'spec_helper'

describe NoSubscription do

  let(:subscription) { NoSubscription.new}

  describe '#has_mentoring?' do
    it 'returns false' do
      expect(subscription.has_mentoring?).to eq(false)
    end
  end

  describe '#price' do
    it 'returns 0' do
      expect(subscription.price).to eq(0)
    end
  end

  describe '#charge' do
    it 'does process a payment' do
      credit_card = double('credit_card')

      expect { subscription.charge(credit_card) }.not_to raise_error
    end
  end
end
