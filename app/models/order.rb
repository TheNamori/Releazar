class Order < ActiveRecord::Base
  belongs_to :client
  belongs_to :deliverer
  has_many :ordered_products
  before_save :calc_products_total_quantity
  before_save :calc_order_total_price

  def calc_products_total_quantity
    self.products_total_quantity = 0
    self.ordered_products.each do |ordered|
      self.products_total_quantity += ordered.product_total_quantity
    end
  end

  def calc_order_total_price
    self.order_total_price = 0
    self.ordered_products.each do |ordered|
      self.order_total_price += (ordered.product.unit_price * ordered.product_total_quantity)
    end
  end

  accepts_nested_attributes_for :ordered_products, reject_if: :all_blank, allow_destroy: true
end
