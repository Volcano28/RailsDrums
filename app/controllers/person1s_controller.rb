class Person1sController < ApplicationController
  before_action :set_person1, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @person1s = Person1.all
    respond_with(@person1s)
  end

  def show
    respond_with(@person1)
  end

  def new
    @person1 = Person1.new
    respond_with(@person1)
  end

  def edit
  end

  def create
    @person1 = Person1.new(person1_params)
    @person1.save
    respond_with(@person1)
  end

  def update
    @person1.update(person1_params)
    respond_with(@person1)
  end

  def destroy
    @person1.destroy
    respond_with(@person1)
  end

  private
    def set_person1
      @person1 = Person1.find(params[:id])
    end

    def person1_params
      params.require(:person1).permit(:snaredrum_carts, :bassdrum_carts, :hightomtom_carts, :floortomtom_carts, :hihat_carts)
    end
end
