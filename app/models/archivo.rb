class Archivo < ActiveRecord::Base

belongs_to :curso
belongs_to :user

validate :name, :presence
validate :descripcion, :presence

has_attached_file :archivo,
                  :url  => ":s3_domain_url",
                  :path => "/:class/:attachment/:id_partition/:style/:filename"
validates_attachment_presence :archivo


extend FriendlyId
friendly_id :name, use: :slugged

end
