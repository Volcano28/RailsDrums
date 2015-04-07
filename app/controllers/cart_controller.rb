class CartController < ApplicationController
def index
	@person1 = Person1.first
	@snaredrums = []
	@snaredrum_carts = @person1.snaredrum_carts.split(",").map(&:to_i)
	@snaredrum_carts.each do |cart| 
		@snaredrums << Snaredrum.find(cart)
	end
	
	@person1 = Person1.first
	@hihats = []
	@hihat_carts = @person1.hihat_carts.split(",").map(&:to_i)
	@hihat_carts.each do |cart| 
		@hihats << Hihat.find(cart)
	end
	end
end
