class RenterSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :phone, :age, :birthdate, :avatar
end
