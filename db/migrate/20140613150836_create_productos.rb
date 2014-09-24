class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string "name"
      t.text "descripcion"
      t.string "slug"
      t.timestamps
    end
    add_index :productos, :slug
  end
end
