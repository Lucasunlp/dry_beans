# frozen_string_literal: true

module Api
  module V1
    class RoutesController < ApplicationController
      rescue_from ActiveRecord::RecordNotFound, with: :route_not_found

      before_action :find_route, only: %i[show]

      def show
        response_parsed = RouteBlueprint.render(@route)
        render json: response_parsed, status: :ok
      end

      private

      def route_params
        params.permit(:id)
      end

      def find_route
        @route = Route.includes(trips: %i[withdrawals deliveries])
                      .find(params[:id])
      end

      def route_not_found
        render json: { error: 'Route not found!' }, status: :not_found
      end
    end
  end
end
