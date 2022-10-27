class RenterSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :phone, :insurance, :driver_license, :age, :birthdate, :avatar
end
