class User < ApplicationRecord

  belongs_to :location, optional: true
  has_many :skillings, as: :skillable
  has_many :skills, through: :skillings

  validates :first_name, :last_name, :username, :phone, presence: true
  validates :username, uniqueness: true

  has_secure_password
  has_secure_token
end
