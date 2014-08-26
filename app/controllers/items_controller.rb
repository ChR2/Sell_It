class ItemsController < ApplicationController

  def index
    @items = Item.order('created_at DESC')
    @item_request = ItemRequest.new 
  end

  def show
    @item = Item.find(params[:id])
  end
end
