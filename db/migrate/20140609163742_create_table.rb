class CreateTable < ActiveRecord::Migration
  def change
    create_table :relacionarchivos do |t|
      t.integer "user_id"
      t.integer "curso_id"
      t.integer "archivo_id"
    end

    create_table :archivos do |t|
      t.string "name"
      t.integer "size"
      t.text "descripcion"
      t.string "arvhivo_file_name"
      t.string "arvhivo_content_type"
      t.integer "arvhivo_file_syze"
      t.timestamp "arvhivo_updated_at"
    end
  end

end
