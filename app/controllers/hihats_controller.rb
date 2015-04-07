class HihatsController < ApplicationController
  before_action :set_hihat, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @hihats = Hihat.all
    respond_with(@hihats)
  end

  def show
    respond_with(@hihat)
  end

  def new
    @hihat = Hihat.new
    respond_with(@hihat)
  end

  def edit
  end

  def create
    @hihat = Hihat.new(hihat_params)
    @hihat.save
    respond_with(@hihat)
  end

  def update
    @hihat.update(hihat_params)
    respond_with(@hihat)
  end

  def destroy
    @hihat.destroy
    respond_with(@hihat)
  end
  
   def cart
		@person1 = Person1.all.first
		@hihat_carts = @person1.hihat_carts.split(",").map(&:to_i)
		
		if @hihat_carts.include? params[:id].to_i
		 #do nothıng
		else
			@hihat_carts << params[:id]
		end
		
		@person1.hihat_carts = @hihat_carts.join(",	")
		if @person1.save
			#render text: "saved!"
			redirect_to "/MyCart/"
			#redirect_to "/cart/index"
		else
			render text: "problem with the carting"
		end
	  end

  private
    def set_hihat
      @hihat = Hihat.find(params[:id])
    end

    def hihat_params
      params.require(:hihat).permit(:name, :imageURL, :brand, :description, :usedby)
    end
end
