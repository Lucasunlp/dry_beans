# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :trip do
    route
    name { Faker::Address.city }
    start_date { Faker::Time.forward(days: 1) }
    end_date { Faker::Time.forward(days: 5) }
  end
end
