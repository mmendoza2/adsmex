class CreateMetodologias < ActiveRecord::Migration
  def change
    create_table :metodologias do |t|
      t.string :name
      t.text :descripcion
      t.string :slug
      t.timestamps
    end
    add_index :metodologias, :slug
  end
end
