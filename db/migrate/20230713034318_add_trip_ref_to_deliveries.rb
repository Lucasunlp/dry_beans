# frozen_string_literal: true

class AddTripRefToDeliveries < ActiveRecord::Migration[6.1]
  def change
    add_reference :deliveries, :trip, null: false, foreign_key: true
  end
end
