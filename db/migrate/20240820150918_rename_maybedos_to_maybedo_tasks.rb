# frozen_string_literal: true

class RenameMaybedosToMaybedoTasks < ActiveRecord::Migration[7.1]
  def change
    rename_table :maybedos, :maybedo_tasks
  end
end
