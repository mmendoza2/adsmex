class Archivo < ActiveRecord::Base
has_many :relacionesarchivo
has_many :cursos, :through => :relacionesarchivo

has_many :relacionesarchivo
has_many :users, :through => :relacionesarchivo

has_attached_file :archivo,
                  :url  => ":s3_domain_url",
                  :path => "/:class/:attachment/:id_partition/:style/:filename"
extend FriendlyId
friendly_id :archivo, use: :slugged

end
