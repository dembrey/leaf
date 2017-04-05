class CreateEmployers < ActiveRecord::Migration[5.0]
  def change
    create_table :employers do |t|
      t.string :company_name
      t.string :website_url
      t.string :contact_name
      t.string :contact_phone
      t.string :contact_email
      t.text :about
      t.string :photo

      t.timestamps
    end
  end
end
