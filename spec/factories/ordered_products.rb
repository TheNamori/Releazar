FactoryBot.define do
  factory :ordered_product do
    orders { nil }
    product_id { 1 }
    product_total_quantity { 1 }
    product_total_price { 1.5 }
  end
end
