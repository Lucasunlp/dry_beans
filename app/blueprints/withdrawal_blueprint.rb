# frozen_string_literal: true

class WithdrawalBlueprint < Blueprinter::Base
  identifier :id, name: :withdrawal_id
  fields :description, :address, :withdrawal_at, :trip_id
end
