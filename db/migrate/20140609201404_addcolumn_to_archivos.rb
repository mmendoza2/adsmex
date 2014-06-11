class AddcolumnToArchivos < ActiveRecord::Migration
  def change
  end

  add_index :archivos, :slug
end
