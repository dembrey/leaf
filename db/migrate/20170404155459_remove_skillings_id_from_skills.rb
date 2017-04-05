class RemoveSkillingsIdFromSkills < ActiveRecord::Migration[5.0]
  def change
    remove_column :skills, :skillings_id, :integer
  end
end
