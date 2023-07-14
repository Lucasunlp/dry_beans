# frozen_string_literal: true

class Withdrawal < ApplicationRecord
  belongs_to :trip, dependent: :destroy
end
