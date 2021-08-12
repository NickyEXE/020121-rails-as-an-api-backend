class CatSerializer < ActiveModel::Serializer
  attributes :id, :name, :actor, :image, :description, :team_name
  # belongs_to :team

end
