class Createcursosrelation < ActiveRecord::Migration
  def change
    create_table "cursosusuario", force: true do |t|
      t.integer "user_id"
      t.integer "curso_id"
      t.boolean "a2013"
      t.boolean "a2014"
      t.boolean "a2015"
      t.boolean "a2016"
      t.boolean "a2017"
      t.boolean "a2018"
      t.boolean "nivel1"
      t.boolean "nivel2"
      t.boolean "nivel3"
    end

    add_column :cursos, :nivel1, :boolean
    add_column :cursos, :nivel2, :boolean
    add_column :cursos, :nivel3, :boolean
  end
end
