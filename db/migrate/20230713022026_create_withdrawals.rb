# frozen_string_literal: true

class CreateWithdrawals < ActiveRecord::Migration[6.1]
  def change
    create_table :withdrawals do |t|
      t.text :description
      t.text :address
      t.date :withdrawal_at

      t.timestamps
    end
  end
end
