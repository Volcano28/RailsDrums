class HightomtomsController < ApplicationController
  before_action :set_hightomtom, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @hightomtoms = Hightomtom.all
    respond_with(@hightomtoms)
  end

  def show
    respond_with(@hightomtom)
  end

  def new
    @hightomtom = Hightomtom.new
    respond_with(@hightomtom)
  end

  def edit
  end

  def create
    @hightomtom = Hightomtom.new(hightomtom_params)
    @hightomtom.save
    respond_with(@hightomtom)
  end

  def update
    @hightomtom.update(hightomtom_params)
    respond_with(@hightomtom)
  end

  def destroy
    @hightomtom.destroy
    respond_with(@hightomtom)
  end

  private
    def set_hightomtom
      @hightomtom = Hightomtom.find(params[:id])
    end

    def hightomtom_params
      params.require(:hightomtom).permit(:name, :imageURL, :brand, :description, :usedby)
    end
end
