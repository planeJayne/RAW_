class RentalCarsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

    def index
        cars = RentalCar.all 
        render json: cars, status: :ok
    end

    def show
        car = car_params
        render json: car, status: :ok
    end

    def create
        car = RentalCar.create!(create_params)
        render json: car, status: :ok
    end

    private

    def create_params
        params.permit(:owner_id, :renter_id, :make, :model, :year, :vehicle_type, :color, :rating, :picture, :description, :transmission, :engine_type, :price, :mileage)
    end

    def car_params
        RentalCar.find(params[:id])
    end

    def record_not_found
        render json: {error: "Wreck not found"}, status: :not_found
    end    
end
