class RentalCar < ApplicationRecord
    belongs_to :renter
    belongs_to :owner
end
