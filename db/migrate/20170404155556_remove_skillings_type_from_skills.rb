class RemoveSkillingsTypeFromSkills < ActiveRecord::Migration[5.0]
  def change
    remove_column :skills, :skillings_type, :string
  end
end
