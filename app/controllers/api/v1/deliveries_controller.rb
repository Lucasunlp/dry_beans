# frozen_string_literal: true

module Api
  module V1
    class DeliveriesController < ApplicationController
      def create
        delivery = Delivery.new(delivery_params)
        if delivery.save
          render json: delivery, status: :created
        else
          render json: delivery.errors.messages, status: :unprocessable_entity
        end
      end

      private

      def delivery_params
        params.require(:delivery).permit(:description, :address, :delivered_at, :trip_id)
      end
    end
  end
end
