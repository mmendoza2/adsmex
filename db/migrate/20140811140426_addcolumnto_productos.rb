class AddcolumntoProductos < ActiveRecord::Migration
  def change
    add_column :productos, :video, :string
    add_column :metodologias, :video, :string
    add_column :subproductos, :video, :string
  end
end
