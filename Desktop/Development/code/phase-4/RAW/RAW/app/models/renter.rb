class Renter < ApplicationRecord
    has_many :rental_cars
    has_many :owners, through: :rental_cars

    validates :first_name, presence: :true
    validates :last_name, presence: :true
    validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/ }
    validates :age, :numericality => {greater_than_or_equal_to: 25}
    validates :insurance, presence: :true
    validates :driver_license, presence: :true
end
