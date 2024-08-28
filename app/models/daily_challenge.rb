# frozen_string_literal: true

class DailyChallenge < ApplicationRecord
  def self.assign_for_today
    return DailyChallenge.find_by(assigned_date: Date.today) if DailyChallenge.where(assigned_date: Date.today).exists?

    challenge = DailyChallenge.where(assigned_date: nil).order('RANDOM()').first
    challenge&.update(assigned_date: Date.today)

    challenge
  end
end
