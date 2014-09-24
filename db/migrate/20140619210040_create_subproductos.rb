class CreateSubproductos < ActiveRecord::Migration
  def change

    create_table :subproductos do |t|
      t.string :name
      t.text :descripcion
      t.string :slug
      t.timestamps
      t.integer :producto_id
    end
    add_column :productos, :subproducto_id, :integer

    add_index :subproductos, :slug
  end

end
