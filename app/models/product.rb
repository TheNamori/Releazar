class Product < ActiveRecord::Base
  has_one :ordered_product
end
