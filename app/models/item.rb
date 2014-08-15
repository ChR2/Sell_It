class Item < ActiveRecord::Base
  has_many :item_request_items 
  has_many :item_requests, :through => :item_request_items 
end
