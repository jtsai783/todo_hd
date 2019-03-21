class ItemsController < ApplicationController
	def create
		@item = Item.new(params.require(:item).permit(:body))

		@item.save
		render json: @item
	end

	def index
		@items = Item.all
		render json: @items
	end
end
