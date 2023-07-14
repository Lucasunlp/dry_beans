# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :route do
    name { Faker::Address.city }
  end
end
