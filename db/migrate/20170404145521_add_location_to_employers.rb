class AddLocationToEmployers < ActiveRecord::Migration[5.0]
  def change
    add_reference :employers, :location, foreign_key: true
  end
end
