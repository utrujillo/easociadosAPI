module Api
  module V1

    class UserSerializer < ActiveModel::Serializer
      attributes :email, :nombre, :apellidos, :nickname
    end

  end
end