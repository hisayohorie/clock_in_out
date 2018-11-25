class ClocksController < ApplicationController

  def index
    @clocks = Clock.all
  end

  def new
  end

  def create
  end
end
