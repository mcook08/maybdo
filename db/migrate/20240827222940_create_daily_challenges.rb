# frozen_string_literal: true

class CreateDailyChallenges < ActiveRecord::Migration[7.1]
  def change
    create_table :daily_challenges do |t|
      t.string :name
      t.date :assigned_date

      t.timestamps
    end
  end
end
