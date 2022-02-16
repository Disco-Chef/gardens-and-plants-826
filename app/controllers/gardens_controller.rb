class GardensController < ApplicationController
  def show
    @garden = Garden.find(params[:id])
  end

  def index
    @gardens = Garden.all
  end
end
