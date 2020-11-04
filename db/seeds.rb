# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
client = Client.create(
  name: 'Matheus Viana',
  city: 'Osasco',
  neighborhood: 'KM 18',
  street: 'Rua Gasparino Lunardi',
  street_number: '252',
  cep: '06110260',
  phone: '984160601',
  deliverer_fee: '3'
)

product = Product.create(
  name: 'Marmita',
  unit_price: '16',
  description: 'Bem gostoso'
)

deliverer = Deliverer.create(
  name: 'Entregador',
  description: 'Ele entrega',
  phone: '36882929'
)

order = Order.create(
  client_id: client.id,
  deliverer_id: deliverer.id,
  products_total_quantity: 2,
  order_total_price: 30
)

ordered_products = OrderedProduct.create(
  order_id: order.id,
  product_id: product.id,
  product_total_quantity: 2,
  product_total_price: product.unit_price * 2
)
