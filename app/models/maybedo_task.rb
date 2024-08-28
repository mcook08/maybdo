# frozen_string_literal: true

class MaybedoTask < ApplicationRecord
  belongs_to :user
  validates :board, inclusion: { in: %w[daily weekly monthly surprise] }, allow_nil: false
  validates :color, inclusion: { in: %w[red green purple orange black] }, allow_nil: false

  scope :active, -> { where('expires_at > ? AND erased = ?', Time.current, false) }
  scope :expired, -> { where('expires_at <= ?', Time.current) }

  attr_accessor :expires_in

  before_save :set_default_expiration, unless: :expires_at

  def set_expiration
    case board
    when 'daily'
      self.expires_at = Time.zone.now.end_of_day
    when 'weekly'
      self.expires_at = Time.zone.now.end_of_week.end_of_day
    when 'monthly'
      self.expires_at = Time.zone.now.end_of_month.end_of_day
    when 'surprise'
      self.expires_at = (Time.zone.now + rand(1..30).days).end_of_day
    end
  end

  private

  def set_default_expiration
    self.expires_at ||= 1.day.from_now
  end
end
