class BassdrumsController < ApplicationController
  before_action :set_bassdrum, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @bassdrums = Bassdrum.all
    respond_with(@bassdrums)
  end

  def show
    respond_with(@bassdrum)
  end

  def new
    @bassdrum = Bassdrum.new
    respond_with(@bassdrum)
  end

  def edit
  end

  def create
    @bassdrum = Bassdrum.new(bassdrum_params)
    @bassdrum.save
    respond_with(@bassdrum)
  end

  def update
    @bassdrum.update(bassdrum_params)
    respond_with(@bassdrum)
  end

  def destroy
    @bassdrum.destroy
    respond_with(@bassdrum)
  end

  private
    def set_bassdrum
      @bassdrum = Bassdrum.find(params[:id])
    end

    def bassdrum_params
      params.require(:bassdrum).permit(:name, :imageURL, :brand, :description, :usedby)
    end
end
