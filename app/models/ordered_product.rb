class OrderedProduct < ActiveRecord::Base
  belongs_to :orders
  belongs_to :product
end
