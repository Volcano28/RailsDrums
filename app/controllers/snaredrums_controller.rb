class SnaredrumsController < ApplicationController
  before_action :set_snaredrum, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @snaredrums = Snaredrum.all
    respond_with(@snaredrums)
  end

  def show
    respond_with(@snaredrum)
  end

  def new
    @snaredrum = Snaredrum.new
    respond_with(@snaredrum)
  end

  def edit
  end

  def create
    @snaredrum = Snaredrum.new(snaredrum_params)
    @snaredrum.save
    respond_with(@snaredrum)
  end

  def update
    @snaredrum.update(snaredrum_params)
    respond_with(@snaredrum)
  end

  def destroy
    @snaredrum.destroy
    respond_with(@snaredrum)
  end
  def cart
		@person1 = Person1.all.first
		@snaredrum_carts = @person1.snaredrum_carts.split(",").map(&:to_i)
		
		if @snaredrum_carts.include? params[:id].to_i
		 #do nothıng
		else
			@snaredrum_carts << params[:id]
		end
		
		@person1.snaredrum_carts = @snaredrum_carts.join(",	")
		if @person1.save
			#render text: "saved!"
			redirect_to "/MyCart/"
			#redirect_to "/cart/index"
		else
			render text: "problem with the carting"
		end
	  end

  private
    def set_snaredrum
      @snaredrum = Snaredrum.find(params[:id])
    end

    def snaredrum_params
      params.require(:snaredrum).permit(:name, :imageURL, :brand, :description, :usedby)
    end
	
	
end
