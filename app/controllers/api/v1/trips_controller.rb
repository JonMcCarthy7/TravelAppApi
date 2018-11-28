# frozen_string_literal: true

module Api::V1
  class TripsController < ApiController
    def index
      trips = Trip.all
      render json: { status: 'SUCCESS', message: 'Loaded all trips', data: trips }, status: :ok
    end
  end
end
