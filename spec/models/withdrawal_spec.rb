# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Withdrawal, type: :model do
  let(:withdrawal) { create(:withdrawal) }

  describe 'associations' do
    it { is_expected.to belong_to(:trip).dependent(:destroy) }
  end

  describe 'validations' do
    it 'withdrawal has to be valid' do
      expect(withdrawal).to be_valid
    end

    it 'withdrawal has to be invalid without trip' do
      withdrawal = build(:withdrawal, trip: nil)

      expect(withdrawal).to be_invalid
    end
  end
end
