# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Trip, type: :model do
  let(:route) { create(:route) }
  let(:trip) { create(:trip, route: route) }

  describe 'associations' do
    it { is_expected.to belong_to(:route) }
    it { is_expected.to have_many(:deliveries).dependent(:destroy) }
    it { is_expected.to have_many(:withdrawals).dependent(:destroy) }
  end

  describe 'validations' do
    it 'trip has to be valid' do
      expect(trip).to be_valid
    end

    it 'trip has to be invalid without route' do
      trip = build(:trip, route: nil)

      expect(trip).to be_invalid
    end
  end
end
