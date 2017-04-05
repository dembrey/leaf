class Skill < ApplicationRecord

  has_many :skillings
  has_many :skillable, through: :skillings, as: :skillable

  validates :name, presence: true
end
