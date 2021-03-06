class EmployerSerializer < ActiveModel::Serializer
  attributes :id, :company_name, :website_url, :contact_name, :contact_phone, :contact_email, :about, :photo

  belongs_to :location
  has_many :jobs
end
