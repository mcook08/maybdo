class AddCompletedAtToMaybedoTasks < ActiveRecord::Migration[7.1]
  def change
    add_column :maybedo_tasks, :completed_at, :datetime
  end
end
