class ItemRequestsController < ApplicationController

  def new
    @items = params[:item].map {|item_id| Item.find(item_id)}
    @item_request = ItemRequest.new(items: @items)
  end

  def create
    @items = params[:item].map {|item_id| Item.find(item_id)}
    @item_request = ItemRequest.new(items: @items, message: params[:message], email: params[:email])
    if @item_request.save
      #do Something
    else
      flash[:notice] = @item_request.errors.full_messages
      render :new
    end
  end

end