class ItemRequest < ActiveRecord::Base
  has_many :item_request_items
  has_many :items, :through => :item_request_items


  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i}, presence: true
end
