class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :cats
end
