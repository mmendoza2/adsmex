class AddColumns < ActiveRecord::Migration
  def change
    add_column :archivos, :archivo_file_name, :string
    add_column :archivos, :archivo_content_type, :string
    add_column :archivos, :archivo_file_size, :integer
    add_column :archivos, :archivo_updated_at, :timestamp

    remove_column :archivos, :arvhivo_content_type
    remove_column :archivos, :arvhivo_file_name
    remove_column :archivos, :arvhivo_file_syze
    remove_column :archivos, :arvhivo_updated_at

  end
end
