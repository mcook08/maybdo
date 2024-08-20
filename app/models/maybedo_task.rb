class MaybedoTask < ApplicationRecord
  validates :color, inclusion: { in: %w[red green purple orange black] }, allow_nil: false

  scope :active, -> { where('expires_at > ? AND erased = ?', Time.current, false) }
  scope :expired, -> { where('expires_at <= ?', Time.current) }

  attr_accessor :expires_in

  before_save :set_default_expiration, unless: :expires_at

  private

  def set_default_expiration
    self.expires_at ||= 1.day.from_now
  end
end
