module Api
  module V1

    class CategorySerializer < ActiveModel::Serializer
      attributes :id, :nombre, :descripcion
    end
  
  end
end