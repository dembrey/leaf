class Job < ApplicationRecord

  belongs_to :employer
  belongs_to :location
  has_many :skillings, as: :skillable
  has_many :skills, through: :skillings

  validates :title, :description, :active, :skills, presence: true
end
