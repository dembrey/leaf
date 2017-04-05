class Employer < ApplicationRecord

  belongs_to :location
  has_many :jobs

  validates :company_name, :contact_name, :contact_phone, :about, presence: true
  validates :company_name, uniqueness: true

  has_secure_password
  has_secure_token
end
