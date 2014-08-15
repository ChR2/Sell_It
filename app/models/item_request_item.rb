class ItemRequestItem < ActiveRecord::Base
  belongs_to :item
  belongs_to :item_request
end
