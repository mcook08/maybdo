class MaybedoTasksController < ApplicationController
  before_action :authenticate_user!

  def index
    board = params[:board] || 'daily' # Default to 'daily' if no board is selected
    @maybedos = current_user.maybedo_tasks.active.where(board: board)
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

  private

  def maybedo_params
    params.require(:maybedo_task).permit(:title, :description, :expires_in, :color, :board)
  end

end
