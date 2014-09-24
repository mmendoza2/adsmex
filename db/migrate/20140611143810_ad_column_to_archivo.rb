class AdColumnToArchivo < ActiveRecord::Migration
  def change
    add_column :archivos, :curso_id, :integer
    add_column :archivos, :user_id, :integer
  end
end
