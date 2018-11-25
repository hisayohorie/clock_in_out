class ClocksController < ApplicationController

  def index
    @clocks = Clock.all
  end

  def new
    @clock = Clock.new
  end

  def create
    @clock = Clock.new(clocks_params)
    @clock.time = Time.now
    @clock.save
    redirect_to new_clock_path
  end

  private
    def clocks_params
      params.require(:clock).permit(:user, :in_out, :time)
    end
end
