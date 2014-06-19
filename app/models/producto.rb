class Producto < ActiveRecord::Base

  has_many :subproductos

  extend FriendlyId
  friendly_id :name, use: :slugged
end
