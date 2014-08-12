class Curso < ActiveRecord::Base
has_many :cursosusuario
has_many :users, :through => :cursosusuario
has_many :archivos


extend FriendlyId
friendly_id :name, use: :slugged

end
