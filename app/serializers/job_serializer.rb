class JobSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :transportation, :active
  has_one :employer
end
