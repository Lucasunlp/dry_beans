# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Delivery, type: :model do
  let(:delivery) { create(:delivery) }

  describe 'associations' do
    it { is_expected.to belong_to(:trip).dependent(:destroy) }
  end

  describe 'validations' do
    it 'delivery has to be valid' do
      expect(delivery).to be_valid
    end

    it 'delivery has to be invalid without trip' do
      delivery = build(:delivery, trip: nil)

      expect(delivery).to be_invalid
    end
  end
end
