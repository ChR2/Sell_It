class ItemRequestsController < ApplicationController

  def new
    @items = params[:item].map {|item_id| Item.find(item_id)}
    @item_request = ItemRequest.new(items: @items)
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @items = params[:item].map {|item_id| Item.find(item_id)}
    @item_request = ItemRequest.new(items: @items, message: params[:item_request][:message], email: params[:item_request][:email])

    respond_to do |format|
    if @item_request.save
      format.html { redirect_to @item_request, notice: 'Person was successfully created.' }
      format.json { render action: 'items#show', status: :created, location: @item_request }
        # added:
      format.js   { render action: 'items#show', status: :created, location: @person }
    
      # ItemRequestMailer.request_email(@item_request).deliver
      # flash[:notice] = "Your message was created successfully!"
      # redirect_to root_path
    else
      # flash[:notice] = @item_request.errors.full_messages
      # render :new
      format.html { render action: 'new' }
      format.json { render json: @item_request.errors, status: :unprocessable_entity }
        # added:
      format.js   { render json: @item_request, status: :unprocessable_entity }
    end
  end

end