class Owner < ApplicationRecord
    has_many :rental_cars
    has_many :renters, through: :rental_cars,
    dependent: :destroy
end
