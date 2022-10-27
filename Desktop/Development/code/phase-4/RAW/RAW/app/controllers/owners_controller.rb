class OwnersController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
        
            def create
                owner = Owner.create!(create_params)
                render json: owner, status: :created
            end
        
            def show
                owner = Owner.create!(owner_params)
                render json: owner, status: :ok
            end
        
            def destroy
                owner = owner_params
                owner.destroy
                render json: {}, status: :not_found
            end
        
            private

            def create_params
                params.permit(:name, :rating)
            end
        
            def owner_params
                Owner.find(params[:id])
            end
        
            def record_not_found
                render json: {error: "Owner not found"}, status: :not_found
            end
end
