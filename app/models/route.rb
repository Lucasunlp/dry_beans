# frozen_string_literal: true

class Route < ApplicationRecord
  has_many :trips, dependent: :destroy
  has_many :deliveries, through: :trips
  has_many :withdrawals, through: :trips

  validates :name, presence: true
end
