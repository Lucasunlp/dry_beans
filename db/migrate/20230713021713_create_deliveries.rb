# frozen_string_literal: true

class CreateDeliveries < ActiveRecord::Migration[6.1]
  def change
    create_table :deliveries do |t|
      t.text :description
      t.text :address
      t.date :delivered_at

      t.timestamps
    end
  end
end
