class RentalCarSerializer < ActiveModel::Serializer
  attributes :id, :owner_id, :renter_id, :make, :model, :year, :vehicle_type, :color, :rating, :picture, :description, :transmission, :engine_type, :price, :mileage
end
