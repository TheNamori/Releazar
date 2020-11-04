# Client class
class Client < ActiveRecord::Base
  has_one :order

  # validates :name,
  #           presence: true,
  #           format: {
  #             with: /\A[a-zA-Z]+\z/,
  #             message: 'only allows letters'
  #           }, length: { in: 2..30 }
  # validates :city,
  #           presence: true,
  #           format: {
  #             with: /\A[a-zA-Z]+\z/,
  #             message: 'only allows letters'
  #           }, length: { in: 2..30 }
  # validates :neighborhood,
  #           presence: true,
  #           length: { in: 2..30 }
  # validates :deliverer_fee,
  #           presence: true,
  #           numericality: { only_integer: true }
  # validates :phone,
  #           presence: true,
  #           uniqueness: true,
  #           length: { in: 4..12 },
  #           numericality: { only_integer: true }
  # validates :order,
  #           allow_blank: true
end
