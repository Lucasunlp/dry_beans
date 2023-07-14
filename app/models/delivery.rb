# frozen_string_literal: true

class Delivery < ApplicationRecord
  belongs_to :trip, dependent: :destroy
end
