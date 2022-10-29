class Owner < ApplicationRecord
    has_many :rental_cars, dependent: :destroy
    has_many :renters, through: :rental_cars
end
