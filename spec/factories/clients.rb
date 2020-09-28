FactoryBot.define do
  factory :client do
    name { 'Matheus' }
    city { 'Osasco' }
    neighborhood { 'Km 18' }
    address { 'Rua Gasparino Lunardi, 252' }
    deliverer_fee { '3' }
    phone { '984160601' }
  end
end
