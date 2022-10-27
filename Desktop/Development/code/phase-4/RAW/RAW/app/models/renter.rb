class Renter < ApplicationRecord
    has_many :rental_cars
    has_many :owners, through: :rental_cars

    validates :name, presence: :true
    validates :email_attributes, email: true
    validates :age, :numericality => {greater_than_or_equal_to: 25}
    validates :insurance, presence: :true
    validates :driver_license, presence: :true
end
