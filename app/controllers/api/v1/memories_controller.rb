# frozen_string_literal: true

module Api::V1
  class MemoriesController < ApiController
    before_action :set_memory, only: %i[show update destroy]
    
    def index
      @memories = Memory.all
      render json: { status: 'SUCCESS', message: 'Loaded all memories', data: @memories }, status: :ok
    end

    def create
      @memory = Memory.create!(memory_params)
      render json: { status: 'SUCCESS', message: 'Memory Created', data: @memory }, status: :created
    end

    def show
      render json: { status: 'SUCCESS', message: 'Loaded Memory', data: @memory }, status: :ok
    end

    def update
      @memory.update(memory_params)
      head :no_content
    end

    def destroy
      @memory.destroy
      head :no_content
    end

    private

    def memory_params
      params.permit(:name, :start_date, :end_date, :location, :description, :memorable_type, :memorable_id, :created_at, :updated_at)
    end

    def set_memory
      @memory = Memory.find(params[:id])
    end
  end
end
