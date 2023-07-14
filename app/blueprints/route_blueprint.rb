# frozen_string_literal: true

class RouteBlueprint < Blueprinter::Base
  identifier :id, name: :route_id
  field :name

  association :trips, blueprint: TripBlueprint
end
