class AddColorToMaybedoTasks < ActiveRecord::Migration[7.1]
  def change
    add_column :maybedo_tasks, :color, :string, null: false, default: 'black'
  end
end
