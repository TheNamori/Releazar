class Deliverer < ActiveRecord::Base
  has_one :order
end
