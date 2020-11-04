FactoryBot.define do
  factory :order do
    client_id { 1 }
    deliverer_id { 1 }
    ordered_products { nil }
    products_total_quantity { 1 }
    order_total_price { 1.5 }
  end
end
