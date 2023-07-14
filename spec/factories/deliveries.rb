# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :delivery do
    trip
    description { Faker::Lorem.words(number: 3) }
    address { Faker::Address.street_address }
    delivered_at { Faker::Time.forward(days: 7) }
  end
end
