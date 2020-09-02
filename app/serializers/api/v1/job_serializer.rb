class JobSerializer < ActiveModel::Serializer
  has_one :category
  attributes :id, :nombre, :descripcion
end
