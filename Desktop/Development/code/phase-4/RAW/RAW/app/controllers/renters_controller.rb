class RentersController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

    def index
        renters = Renter.all 
        render json: renters, status: :ok
    end

    def show
        renter = renter_params
        render json: renter, status: :ok
    end

    private

    def renter_params
        Renter.find(params[:id])
    end

    def record_not_found
        render json: {error: "Renter not found"}, status: :not_found
    end
end
