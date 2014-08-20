class ItemRequestsController < ApplicationController

  def new
    @items = params[:item].map {|item_id| Item.find(item_id)}
    @item_request = ItemRequest.new(items: @items)
  end

  def create
    @items = params[:item].map {|item_id| Item.find(item_id)}
    @item_request = ItemRequest.new(items: @items, message: params[:item_request][:message], email: params[:item_request][:email])
    
    if @item_request.save
      ItemRequestMailer.request_email(@item_request).deliver 
      flash[:notice] = "Your message was created successfully!"
      redirect_to root_path
    else
      flash[:notice] = @item_request.errors.full_messages
      render :new
    end
  end

end