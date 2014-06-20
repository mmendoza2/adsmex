class Addphotofiles < ActiveRecord::Migration
  def change



    add_column :productos, :photo_file_name, :string
    add_column :productos, :photo_content_type, :string
    add_column :productos, :photo_file_size, :integer
    add_column :productos, :photo_updated_at, :timestamp

    add_column :subproductos, :photo_file_name, :string
    add_column :subproductos, :photo_content_type, :string
    add_column :subproductos, :photo_file_size, :integer
    add_column :subproductos, :photo_updated_at, :timestamp
  end
end
