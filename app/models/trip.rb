# frozen_string_literal: true

class Trip < ApplicationRecord
  belongs_to :route, dependent: :destroy
  has_many :deliveries, dependent: :destroy
  has_many :withdrawals, dependent: :destroy
end
