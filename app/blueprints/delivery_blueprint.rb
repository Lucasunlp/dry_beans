# frozen_string_literal: true

class DeliveryBlueprint < Blueprinter::Base
  identifier :id, name: :delivery_id
  fields :description, :address, :delivered_at, :trip_id
end
