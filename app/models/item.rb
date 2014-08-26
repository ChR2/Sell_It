class Item < ActiveRecord::Base
  has_many :item_request_items
  has_many :item_requests, through: :item_request_items

  validates :title, :description, presence: true
  validates :price, presence: true, numericality: {greater_than: 0}
end
