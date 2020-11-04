FactoryBot.define do
  factory :product do
    name { "MyString" }
    unit_price { 1.5 }
    description { "MyString" }
    dish_day { false }
    blocked { false }
  end
end
