class FloortomtomsController < ApplicationController
  before_action :set_floortomtom, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @floortomtoms = Floortomtom.all
    respond_with(@floortomtoms)
  end

  def show
    respond_with(@floortomtom)
  end

  def new
    @floortomtom = Floortomtom.new
    respond_with(@floortomtom)
  end

  def edit
  end

  def create
    @floortomtom = Floortomtom.new(floortomtom_params)
    @floortomtom.save
    respond_with(@floortomtom)
  end

  def update
    @floortomtom.update(floortomtom_params)
    respond_with(@floortomtom)
  end

  def destroy
    @floortomtom.destroy
    respond_with(@floortomtom)
  end

  private
    def set_floortomtom
      @floortomtom = Floortomtom.find(params[:id])
    end

    def floortomtom_params
      params.require(:floortomtom).permit(:name, :imageURL, :brand, :description, :usedby)
    end
end
