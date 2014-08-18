class Item < ActiveRecord::Base
  has_many :item_request_items 
  has_many :item_requests, through: :item_request_items 

  validates_presence_of :title, :description, :price
  validates :price, numericality: {greater_than: 0} 



end
