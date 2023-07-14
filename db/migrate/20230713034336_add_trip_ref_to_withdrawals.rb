# frozen_string_literal: true

class AddTripRefToWithdrawals < ActiveRecord::Migration[6.1]
  def change
    add_reference :withdrawals, :trip, null: false, foreign_key: true
  end
end
