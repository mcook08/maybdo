class AddUserToMaybedoTasks < ActiveRecord::Migration[7.1]
  def change
    add_reference :maybedo_tasks, :user, null: false, foreign_key: true
  end
end
