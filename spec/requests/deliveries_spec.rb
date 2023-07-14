# frozen_string_literal: true

require 'rails_helper'

# rubocop:disable Metrics/BlockLength
RSpec.describe 'Deliveries', type: :request do
  let(:trip) { create(:trip) }
  let(:delivery_params) do
    {
      delivery: {
        description: 'Some description',
        address: 'Some address',
        delivered_at: Time.current,
        trip_id: trip.id
      }
    }
  end

  let(:invalid_delivery_params) do
    {
      delivery: {
        description: 'Some description',
        address: 'Some address',
        delivered_at: Time.current,
        trip_id: 'invalid'
      }
    }
  end

  describe 'POST /api/v1/deliveries' do
    it 'creates a new delivery with validate attributes' do
      post '/api/v1/deliveries', params: delivery_params.to_json, headers: { 'Content-type': 'application/json' }

      expect(response).to have_http_status(:created)
    end

    it 'cant creates a new delivery with inexistent trip id' do
      post '/api/v1/deliveries', params: invalid_delivery_params.to_json,
                                 headers: { 'Content-type': 'application/json' }

      expect(response).to have_http_status(:unprocessable_entity)
    end
  end
  # rubocop:enable Metrics/BlockLength
end
