# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Route, type: :model do
  let(:route) { create(:route) }

  describe 'associations' do
    it { is_expected.to have_many(:trips).dependent(:destroy) }
    it { is_expected.to have_many(:deliveries).through(:trips) }
    it { is_expected.to have_many(:withdrawals).through(:trips) }
  end

  describe 'validations' do
    it 'route has to be valid' do
      expect(route).to be_valid
    end

    it 'route has to be invalid without name' do
      route = build(:route, name: nil)

      expect(route).to be_invalid
    end
  end
end
