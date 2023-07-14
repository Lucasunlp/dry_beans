# frozen_string_literal: true

class AddRouteRefToTrips < ActiveRecord::Migration[6.1]
  def change
    add_reference :trips, :route, null: false, foreign_key: true
  end
end
