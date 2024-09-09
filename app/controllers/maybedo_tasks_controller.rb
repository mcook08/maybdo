# frozen_string_literal: true

class MaybedoTasksController < ApplicationController
  before_action :authenticate_user!

  def index
    @board = params[:board] || 'daily' # Default to 'daily' if no board is selected
    @maybedos = current_user.maybedo_tasks.active.where(board: @board)
    @tasks_by_board = current_user.maybedo_tasks.active.group(:board).count
    case @board
    when 'daily'
      word = 'today'
      @date_display_string = Time.zone.now.strftime('%-m/%-d')
    when 'weekly'
      word = 'this week'
      @date_display_string = "#{Time.zone.now.beginning_of_week.strftime('%-m/%-d')} - #{Time.zone.now.end_of_week.strftime('%-m/%-d')}"
    when 'monthly'
      word = 'this month'
      @date_display_string = Time.zone.now.strftime('%B')
    end
    @empty_phrase = "What might you do #{word}?"
  end

  def new
    params[:board] ||= 'daily'
    @maybedo = current_user.maybedo_tasks.build(color: params[:color], board: params[:board])
  end

  def create
    @maybedo = current_user.maybedo_tasks.new(maybedo_params)
    @maybedo.set_expiration

    if @maybedo.save
      redirect_to maybedo_tasks_path(board: @maybedo.board), notice: 'Maybedo was successfully created.'
    else
      render :new
    end
  end

  def current_stats
    @tasks_by_board = MaybedoTask.group(:board).count
  end

  def add_daily_challenge
    @daily_challenge = DailyChallenge.assign_for_today

    if @daily_challenge
      existing_challenge = current_user.maybedo_tasks.find_by(
        title: @daily_challenge.name,
        board: 'daily',
      )

      if existing_challenge
        redirect_to maybedo_tasks_path(board: 'daily'), alert: 'You already have the current daily challenge!'
      else
        current_user.maybedo_tasks.create(
          title: @daily_challenge.name,
          description: 'Daily Challenge',
          board: 'daily',
          color: 'orange',
          expires_at: Time.zone.now.end_of_day
        )
        redirect_to maybedo_tasks_path(board: 'daily'), notice: 'Daily Challenge added!'
      end
    else
      redirect_to maybedo_tasks_path(board: 'daily'), alert: 'No available challenges to assign!'
    end
  end

  private

  def maybedo_params
    params.require(:maybedo_task).permit(:title, :description, :expires_in, :color, :board)
  end
end
