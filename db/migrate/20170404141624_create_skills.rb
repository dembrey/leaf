class CreateSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :skills do |t|
      t.string :name
      t.integer :skillings_id
      t.string :skillings_type

      t.timestamps
    end
  end
end
