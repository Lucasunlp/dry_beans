# frozen_string_literal: true

require 'swagger_helper'

RSpec.describe 'api/v1/deliveries', type: :request do
  path '/api/v1/deliveries' do
    let(:trip) { create(:trip) }
    let(:delivery) { build(:delivery, trip_id: trip.id) }

    post 'Creates a delivery' do
      tags 'Deliviries'
      consumes 'application/json'
      parameter name: :delivery, in: :body, schema: {
        type: :object,
        properties: {
          address: { type: :string },
          delivered_at: { type: :string },
          description: { type: :string },
          trip_id: { type: :string }
        },
        required: %w[address delivered_at description trip_id]
      }

      response '201', 'delivery created' do
        run_test!
      end

      response '422', 'invalid request' do
        let(:delivery) { { description: 'foo' } }
        run_test!
      end
    end
  end
end
