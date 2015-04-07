class CrashesController < ApplicationController
  before_action :set_crash, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @crashes = Crash.all
    respond_with(@crashes)
  end

  def show
    respond_with(@crash)
  end

  def new
    @crash = Crash.new
    respond_with(@crash)
  end

  def edit
  end

  def create
    @crash = Crash.new(crash_params)
    @crash.save
    respond_with(@crash)
  end

  def update
    @crash.update(crash_params)
    respond_with(@crash)
  end

  def destroy
    @crash.destroy
    respond_with(@crash)
  end

  private
    def set_crash
      @crash = Crash.find(params[:id])
    end

    def crash_params
      params.require(:crash).permit(:name, :imageURL, :brand, :description, :usedby)
    end
end
