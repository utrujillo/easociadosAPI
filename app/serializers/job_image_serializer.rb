class JobImageSerializer < ActiveModel::Serializer
  attributes :id, :imagen, :titulo, :descripcion
  has_one :job
end
