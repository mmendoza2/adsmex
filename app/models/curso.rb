class Curso < ActiveRecord::Base
has_many :cursosusuario
has_many :users, :through => :cursosusuario
end
