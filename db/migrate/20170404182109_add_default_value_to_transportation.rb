class AddDefaultValueToTransportation < ActiveRecord::Migration[5.0]
  def change
    change_column :jobs, :transportation, :boolean, default: false
  end
end
