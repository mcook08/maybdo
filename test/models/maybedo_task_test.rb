require 'test_helper'

class MaybedoTaskTest < ActiveSupport::TestCase
  def setup
    @user = users(:one) # Use the fixture user 'one'
    Time.zone = @user.timezone
  end

  test 'sets expiration to end of the current day for daily board' do
    maybedo = MaybedoTask.new(board: 'daily', user: @user)
    maybedo.set_expiration

    assert_equal Time.zone.now.end_of_day.to_i, maybedo.expires_at.to_i
  end

  test 'sets expiration to end of the day 7 days from now for weekly board' do
    maybedo = MaybedoTask.new(board: 'weekly', user: @user)
    maybedo.set_expiration

    assert_equal Time.zone.now.end_of_week.end_of_day.to_i, maybedo.expires_at.to_i
  end

  test 'sets expiration to end of the current month for monthly board' do
    maybedo = MaybedoTask.new(board: 'monthly', user: @user)
    maybedo.set_expiration

    assert_equal Time.zone.now.end_of_month.end_of_day.to_i, maybedo.expires_at.to_i
  end

  test 'sets expiration to end of a random day for surprise board' do
    maybedo = MaybedoTask.new(board: 'surprise', user: @user)
    maybedo.set_expiration

    random_days = (1..30).to_a.map { |days| (Time.zone.now + days.days).end_of_day.to_i }
    assert_includes random_days, maybedo.expires_at.to_i
  end
end
