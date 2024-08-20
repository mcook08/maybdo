class RenameCompletedToErasedInMaybedoTasks < ActiveRecord::Migration[7.1]
  def change
    # Rename the column from completed to erased
    rename_column :maybedo_tasks, :completed, :erased

    # Change the default and ensure it's not nullable
    change_column_default :maybedo_tasks, :erased, from: nil, to: false
    change_column_null :maybedo_tasks, :erased, false
  end
end
