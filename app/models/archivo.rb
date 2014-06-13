class Archivo < ActiveRecord::Base

belongs_to :curso
belongs_to :user



has_attached_file :archivo,
                  :url  => ":s3_domain_url",
                  :path => "/:class/:attachment/:id_partition/:style/:filename"
extend FriendlyId
friendly_id :name, use: :slugged

end
