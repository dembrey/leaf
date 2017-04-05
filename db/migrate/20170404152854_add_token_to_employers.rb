class AddTokenToEmployers < ActiveRecord::Migration[5.0]
  def change
    add_column :employers, :token, :string
  end
end
