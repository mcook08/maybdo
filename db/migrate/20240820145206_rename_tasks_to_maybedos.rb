class RenameTasksToMaybedos < ActiveRecord::Migration[7.1]
  def change
    rename_table :tasks, :maybedos
  end
end
