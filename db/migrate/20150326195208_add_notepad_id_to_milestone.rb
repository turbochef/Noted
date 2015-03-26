class AddNotepadIdToMilestone < ActiveRecord::Migration
  def change
    add_column :milestones, :notepad_id, :integer
  end
end
