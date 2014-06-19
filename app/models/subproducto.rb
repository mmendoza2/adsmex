class Subproducto < ActiveRecord::Base
  belongs_to :producto

  extend FriendlyId
  friendly_id :name, use: :slugged
end
