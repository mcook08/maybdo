class MaybedoTasksController < ApplicationController
  def index
    @maybedos = MaybedoTask.active
  end

  def new
    @maybedo = MaybedoTask.new(color: params[:color])
  end

  def create
    @maybedo = MaybedoTask.new(maybedo_params)
    set_expiration(@maybedo)

    if @maybedo.save
      redirect_to maybedo_tasks_path, notice: 'Maybedo was successfully created.'
    else
      render :new
    end
  end

  private

  def maybedo_params
    params.require(:maybedo_task).permit(:title, :description, :expires_in, :color)
  end

  def set_expiration(maybedo)
    case maybedo.expires_in
    when '1_day'
      maybedo.expires_at = 1.day.from_now
    when '7_days'
      maybedo.expires_at = 7.days.from_now
    when '30_days'
      maybedo.expires_at = 30.days.from_now
    when 'surprise_me'
      maybedo.expires_at = rand(1..30).days.from_now
    end
  end
end
