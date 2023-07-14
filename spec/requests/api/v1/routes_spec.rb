# frozen_string_literal: true

require 'swagger_helper'

RSpec.describe 'api/v1/routes', type: :request do
  path '/api/v1/routes/{id}' do
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show route with the trips and their withdrawals and deliviries') do
      response(200, 'successful') do
        let(:id) { create(:route).id }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end
end
