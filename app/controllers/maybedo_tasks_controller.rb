# frozen_string_literal: true

class MaybedoTasksController < ApplicationController
  before_action :authenticate_user!

  def index
    board = params[:board] || 'daily' # Default to 'daily' if no board is selected
    @maybedos = current_user.maybedo_tasks.active.where(board:)
    @tasks_by_board = MaybedoTask.active.group(:board).count
  end

  def new
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
      # Check if the user already has the current daily challenge
      existing_challenge = current_user.maybedo_tasks.find_by(
        title: @daily_challenge.name,
        board: 'daily'
      )

      if existing_challenge
        redirect_to maybedo_tasks_path(board: 'daily'), alert: 'You already have the current daily challenge!'
      else
        # Create a new task only if the user does not have the current daily challenge
        current_user.maybedo_tasks.create(
          title: @daily_challenge.name,
          description: 'Daily Challenge',
          board: 'daily',
          color: 'orange'
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
