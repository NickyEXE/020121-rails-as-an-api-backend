class CatSerializer < ActiveModel::Serializer
  attributes :id, :name, :actor, :image, :description, :team_name, :tip
  # belongs_to :team

end
