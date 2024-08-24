class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :maybedo_tasks, dependent: :destroy

  validates :timezone, inclusion: { in: ActiveSupport::TimeZone.all.map{ |tz| tz.tzinfo.name } }, allow_nil: true
end
