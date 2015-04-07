class RidesController < ApplicationController
  before_action :set_ride, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @rides = Ride.all
    respond_with(@rides)
  end

  def show
    respond_with(@ride)
  end

  def new
    @ride = Ride.new
    respond_with(@ride)
  end

  def edit
  end

  def create
    @ride = Ride.new(ride_params)
    @ride.save
    respond_with(@ride)
  end

  def update
    @ride.update(ride_params)
    respond_with(@ride)
  end

  def destroy
    @ride.destroy
    respond_with(@ride)
  end

  private
    def set_ride
      @ride = Ride.find(params[:id])
    end

    def ride_params
      params.require(:ride).permit(:name, :imageURL, :brand, :description, :usedby)
    end
end
