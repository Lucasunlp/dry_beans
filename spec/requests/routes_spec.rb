# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Routes', type: :request do
  describe 'GET /api/v1/routes/:id' do
    it 'returns the route' do
      route = create(:route)

      get "/api/v1/routes/#{route.id}"

      expect(response).to have_http_status(:ok)
    end

    it 'returns 404 if the route is not found' do
      get '/api/v1/routes/1'

      expect(response).to have_http_status(:not_found)
    end
  end
end
