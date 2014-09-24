class CreatetablePuntuaje < ActiveRecord::Migration
  def change
    create_table :calificacion do |t|
      t.integer :baja
      t.integer :media
      t.integer :alta
      t.integer :user_id
      t.integer :curso_id
    end
  end
end
