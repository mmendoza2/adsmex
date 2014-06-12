class Relacionarchivo < ActiveRecord::Base

  belongs_to :user
  belongs_to :curso
  belongs_to :archivo

end
