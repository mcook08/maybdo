class AddBoardToMaybedoTasks < ActiveRecord::Migration[7.1]
  def change
    add_column :maybedo_tasks, :board, :string
  end
end
