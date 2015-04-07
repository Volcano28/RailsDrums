class MiddletomtomsController < ApplicationController
  before_action :set_middletomtom, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @middletomtoms = Middletomtom.all
    respond_with(@middletomtoms)
  end

  def show
    respond_with(@middletomtom)
  end

  def new
    @middletomtom = Middletomtom.new
    respond_with(@middletomtom)
  end

  def edit
  end

  def create
    @middletomtom = Middletomtom.new(middletomtom_params)
    @middletomtom.save
    respond_with(@middletomtom)
  end

  def update
    @middletomtom.update(middletomtom_params)
    respond_with(@middletomtom)
  end

  def destroy
    @middletomtom.destroy
    respond_with(@middletomtom)
  end

  private
    def set_middletomtom
      @middletomtom = Middletomtom.find(params[:id])
    end

    def middletomtom_params
      params.require(:middletomtom).permit(:name, :imageURL, :brand, :description, :usedby)
    end
end
