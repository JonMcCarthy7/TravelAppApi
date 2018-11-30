# frozen_string_literal: true

module Api::V1
  class TripsController < ApiController
    before_action :set_trip, only: %i[show update destroy]

    def index
      @trips = Trip.all
      render json: { status: 'SUCCESS', message: 'Loaded all trips', data: @trips }, status: :ok
    end

    def create
      @trip = Trip.create!(trip_params)
      render json: { status: 'SUCCESS', message: 'Trip Created', data: @trip }, status: :created
    end

    def show
      render json: { status: 'SUCCESS', message: 'Loaded Trip', data: @trip }, status: :ok
    end

    def update
      @trip.update(trip_params)
      render json: { status: 'SUCCESS', message: 'Trip Updated', data: @trip }, status: :ok
    end

    def destroy
      @trip.destroy
      head :no_content
    end

    private

    def trip_params
      params.permit(:user_id, :name, :start_date, :end_date, :country, :description, :created_at, :updated_at)
    end

    def set_trip
      @trip = Trip.find(params[:id])
    end
  end
end
