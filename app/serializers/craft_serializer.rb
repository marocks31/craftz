class CraftSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :difficulty, :materials, :image
end
