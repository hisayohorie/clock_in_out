class ClocksController < ApplicationController

  def index
    @clocks = Clock.all
  end

  def new
    @clock = Clock.new
  end

  def create
    @clock = Clock.new(clocks_params)
    @clock.time = Time.now.localtime
    if @clock.save
      flash[:notice] = "You clocked #{@clock.in_out.downcase} successfully"
      redirect_to new_clock_path
    else
      render 'new'
    end
  end

  private
    def clocks_params
      params.require(:clock).permit(:user, :in_out, :time)
    end
end
