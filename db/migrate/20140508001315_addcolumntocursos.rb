class Addcolumntocursos < ActiveRecord::Migration
  def change
    add_column :cursos, :categoria, :string
  end
end
