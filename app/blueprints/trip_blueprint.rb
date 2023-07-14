# frozen_string_literal: true

class TripBlueprint < Blueprinter::Base
  identifier :id, name: :trip_id
  fields :name, :start_date, :end_date

  association :deliveries, blueprint: DeliveryBlueprint
  association :withdrawals, blueprint: WithdrawalBlueprint
end
