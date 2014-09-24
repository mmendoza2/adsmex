class AddcolumntoCursos < ActiveRecord::Migration
  def change
    add_column :cursos2013, :date, :integer
  end
end
